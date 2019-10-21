require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "sammy"
  end

  get "/" do

    erb :index
  end

  post "/checkout" do
    @session = session
    @session.merge!("item" => params[:item])
  end


end
