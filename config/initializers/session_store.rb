# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_cinema_session',
  :secret      => '5961af44b32860e5ba3380f66f4a5cc97fc3ffcdc040815ed025a7f40b5393b755e849a6001a05523aa6fabc6ef5e675f2d7f5e0a7c0ef80c684be947a467890'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
