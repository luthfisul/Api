class User < ActiveRecord::Base
  
  acts_as_token_authenticatable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  if user = nil or user_valid = nil
  	status(:unprocessable_entity)
  else
  end
end
