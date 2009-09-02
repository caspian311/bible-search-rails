# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_bible-search_session',
  :secret      => 'ef79283cf5a323bf5ecb77f2874f13c209e6b11aeeea332f50c26eb51e357cb48bebfa1026b599bb80cd7b62f9d7bcc4c6664102e73f4e68de4dcfb807f9a5e4'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
