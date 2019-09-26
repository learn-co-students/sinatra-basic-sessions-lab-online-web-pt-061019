require_relative 'config/environment'

class App < Sinatra::Base
  configure do 
    enable :sessions
    set :session_secret, "DWv=dw2gDNN/LpH"
  end 

  get '/' do 
    erb :index
  end 

  post '/checkout' do 
    session[:item] = params[:item]
    @session = session 
    erb :checkout
  end 

end