class User < ActiveRecord::Base
  # Relationship
  has_many    :user_roles,
              :dependent => :destroy
  belongs_to  :position
  has_many    :inventories,
              :class_name => "Inventory",
              :foreign_key => "user_id"
  has_many    :material_exchange,
              :class_name => "MaterialExchange",
              :foreign_key => "created_by"
  has_many    :semi_product_exchange,
              :class_name => "SemiProductExchange",
              :foreign_key => "created_by"
  has_many    :product_exchange,
              :class_name => "ProductExchange",
              :foreign_key => "created_by"    
  
  # Validation
  validates_presence_of   :username, :fullname, :email
  validates_uniqueness_of :username     
  
  # Property
  cattr_accessor            :current_user
  attr_accessor             :password_confirmation
  validates_confirmation_of :password

  # Property password
  def password
    @password
  end

  # Property password=
  def password=(pwd)
    @password = pwd
    return if pwd.blank?
    create_new_salt
    self.hash_password = User.encrypted_password(self.password, self.salt)
  end

  # Static authenticate function
  def self.authenticate(name, password)
    user = self.find_by_username(name)
    if user
      expected_password = encrypted_password(password, user.salt)
      if user.hashed_password != expected_password
        user = nil
      end
    end
    user
  end

  # Overwrite after_destroy to check user exist
  def after_destroy
    if User.count.zero?
      raise "Can not delete all users!"
    end
  end

  # Overwrite before_detroy to check assigend user
  def before_destroy
      raise "Can not delete current user!" if has_been_assigned?
  end  

  # Function to reset password
  # Set new password = username
  def reset_password
    self.password = self.username
    self.save
  end

  # Check existed user by username
  # return: nil, if user was not found
  #         user, if user exist
  def self.is_exist?(username)
    return User.find(:first,
                     :conditions => ["username = ?", username])
  end

  # Check role of user by role id
  # return: nil, if user does not has role
  def self.has_role_id?(user_id, role_id)
    return UserRole.find(:all, :conditions => ["user_id = ? and role_id = ?", user_id, role_id])
  end

  # Check role of user by role name
  # return: nil, if user does not has role
  def self.has_role?(user_id, role_name)
    return UserRole.find(:all,
                         :joins => "INNER JOIN roles on user_roles.role_id = roles.id",
                         :conditions => ["user_roles.user_id = ? and roles.name = ?", user_id, role_name])
  end

  # Get all users with role
  def self.all_users_with_role(role_name)
    return User.find(:all,
                     :joins => "INNER JOIN user_roles ON users.id = user_roles.user_id
                                INNER JOIN roles ON user_roles.role_id = roles.id",
                     :conditions => ["roles.name = ?", role_name],
                     :select => "users.*")
  end

  private
  # Function to encrypt password
  def self.encrypted_password(password, salt)
    string_to_hash = password + "wibble" + salt
    Digest::SHA1.hexdigest(string_to_hash)
  end

  # Create new salt
  def create_new_salt
    self.salt = self.object_id.to_s + rand.to_s
  end
  
  # Check assigned user
  def has_been_assigned?
    return false
  end
end
