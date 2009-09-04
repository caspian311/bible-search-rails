# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_bible-search_session',
  :secret      => 'fa6b21471ff274c38f65734fbacb6d7efbe2a2d9ec30d5bbf6514e79f7a1373f88a7917169186e88c0251d15285bf3c4e6118bf6225632fdcf894b881159444e'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
