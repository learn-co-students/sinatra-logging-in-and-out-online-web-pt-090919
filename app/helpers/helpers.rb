require 'sinatra/base'
class Helpers
  def self.current_user
    @user = User.find_by(session[:user_id])
  end
  
  def self.is_logged_in?(session)
    !!session[:user_id]
  end
end