require_relative 'config/environment'

class App < Sinatra::Base
  configure do 
    enable :sessions
    set :session_secret, "eec556a789664ddf4effa51bd20890f309dfca17d58e6ea9ded86b748ff5e7ad"
  end

  get '/' do 
    erb :index
  end

  post '/checkout' do 
    session["item"] = params[:item]
    @session = session
    erb :checkout
  end

end