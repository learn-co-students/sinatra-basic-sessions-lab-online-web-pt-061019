require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secrect, "secret"
  end
 
  get '/' do
    erb :index
  end

  post '/checkout' do
    @session = session
    item = params["item"]
    @session[:item] = item
    # binding.pry
  end

end