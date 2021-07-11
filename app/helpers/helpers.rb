class Helpers
  def self.current_user(session_hash)
    @user = User.find(session_hash[:user_id])
  end
  
  def self.is_logged_in?(session_hash)
    # double negation forces the return value to be a boolean
    !!session_hash[:user_id]
  end
end