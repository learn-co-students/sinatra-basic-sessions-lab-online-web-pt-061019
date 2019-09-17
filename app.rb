require_relative 'config/environment'

class App < Sinatra::Base

    configure do
        enable :sessions
        set :session_secret, "secret"
    end

    get '/' do
        erb :index
    end

    post '/checkout' do
        # binding.pry     
        session[:item] = params[:item]
        @session = session
        erb :checkout       
    end
end


# modify and add data to the session hash by adding a key-value pair
# get '/hey' do 
#     session["name"] = "Victoria"
#     @session = session
#   end