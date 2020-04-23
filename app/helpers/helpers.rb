class Helpers
  
  def self.current_user(sesh)
    User.find(sesh[:user_id])
  end
  
  def self.is_logged_in?(sesh)
    true if self.current_user(sesh)
  end
  
end