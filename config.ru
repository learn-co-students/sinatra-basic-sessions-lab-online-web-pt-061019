require './config/environment'

run App


configure do
    enable :sessions
    set :session_secret, "secret"
end