require_relative 'config/environment'

class App < Sinatra::Base
  
  configure do
    enable :sessions
    set :session_secret, "secret" #enables my session with the server
  end
  
  
  get '/' do 
    erb :index #renders my index page
  end
  
  post '/checkout' do 
    session[:item] = params[:item] #setting the params in the session 
    @session = session 
    erb :checkout
  end
  
end