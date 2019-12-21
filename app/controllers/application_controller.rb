require_relative '../../config/environment'
class ApplicationController < Sinatra::Base
  configure do
    set :views, Proc.new { File.join(root, "../views/") }
    enable :sessions unless test?
    set :session_secret, "secret"
  end

  get '/' do
    erb :index
  end

  post '/login' do
    session[:user_id] = User.find_by(params).id
    binding.pry
    if session[:user_id]
      redirect to "/account"
    else
      erb :error
    end
  end

  get '/account' do
    erb :account
  end

  get '/logout' do
    @session = session
  end


end

