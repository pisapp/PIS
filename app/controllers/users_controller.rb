class UsersController < ApplicationController
  layout "master"
  
  # GET /users
  # GET /users.xml
  def index
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @users }
    end
  end

  # GET /users/1
  # GET /users/1.xml
  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user }
    end
  end

  # GET /users/new
  # GET /users/new.xml
  def new
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @user }
    end
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /users
  # POST /users.xml
  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        flash[:notice] = 'User was successfully created.'
        format.html { redirect_to(@user) }
        format.xml  { render :xml => @user, :status => :created, :location => @user }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /users/1
  # PUT /users/1.xml
  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        flash[:notice] = 'User was successfully updated.'
        format.html { redirect_to(@user) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.xml
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to(users_url) }
      format.xml  { head :ok }
    end
  end
  
  # Action to login
  def login
    session[:username] = nil
    if request.post?
      user = User.authenticate(params[:username], params[:password])
      if user
        # Set user sesssion  
        session[:username] = user.username
        session[:user_id] = user.id
        session[:admin] = true if user.is_admin
        # Set current user
        User.current_user = user
        flash[:notice] = "Welcome #{user.username}!"
        redirect_to administration_url
      else
        flash[:notice] = "Username or Password is invalid!"
      end
    end
  end

  # Action to logout
  def logout
    reset_session
    flash[:notice] = "Logout successfully!"
    redirect_to login_url
  end

  # Action to change password
  def change_password
    if request.post?
      user = User.authenticate(session[:username], params[:old_password])
      if user
        unless params[:new_password] == params[:new_password_confirmation]
          flash[:notice] = "Password confirmation does not match."
          return
        end
        user.password = params[:new_password]
        user.save
        flash[:notice] = "Change password successfully!"
      else
        flash[:notice] = "Password is invalid!"
      end
    end
  end

  # Action to reset password
  def reset_password
    begin
      user = User.find(params[:id])
      user.reset_password
      flash[:notice] = "Reset password of #{user.name} successfully!"
    rescue Exception => e
      flash[:notice] = e.message
    end
    redirect_to :action => :index
  end
end
