class User < ActiveRecord::Base
  #  Validates that the specified attributes are not blank
  validates_presence_of :username, :password, :balance
end

