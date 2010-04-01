# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_PIS_session',
  :secret      => '11b83ca4f987d05e6eaeee6b98f8d6101de6b8aa4701a97f1c8fd53dc7a3beb5e1f9a3d0e58f7c7b6adc693d6ed6f6f1c97fef40b3f42f2ae78f81fd822729fc'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
