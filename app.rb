require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :sessions_secret, 'abc123'
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    @session = session
    @session["item"] = params["item"]
    erb :checkout
  end

end
