require_relative 'config/environment'

class App < Sinatra::Base

    configure do
        enable :sessions
        set :session_secret, "35eee64a0add07b28a91f94d8274caeaaa0b3f938e22d08040dc30e1a354e735ecce3384fda19b5c64b9c8a69b705a1384507f83f65d80e6173c9ec5cfc4e23c"
    end

    get '/' do 
        erb :index
    end

    post '/checkout' do
        @session = session
        @item = params[:item]
        
        erb :checkout
    end
end