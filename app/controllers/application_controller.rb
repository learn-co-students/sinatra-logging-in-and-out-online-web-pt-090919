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
  user = User.find_by(username: params[:username])
  if user.save
    session[:user_id] = user.id
    redirect_to "/#{user.id}/account"
  else
    redirect_to "/error"
  end
  end

  get '/account' do
@user = User.find(params[:id])
erb :account
  end

  get '/logout' do
  session.clear
  redirect_to "/"
  end


end

