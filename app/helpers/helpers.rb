class Helpers
  def current_user
    session[:user_id] = user.id
  end
  
  def is_logged_in?
    !!current_user
  end
end