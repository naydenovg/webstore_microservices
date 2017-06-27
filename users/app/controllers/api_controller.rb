class ApiController < ApplicationController

	skip_before_action :verify_authenticity_token

  def get_users
  	render json: hashed_users
  end

  private

  def hashed_users
  	users = HashWithIndifferentAccess.new

  	User.all.each do |user|
  		users[user.id] = {
  			first_name: user.first_name,
  			last_name: user.last_name,
  			email: user.email
  		}
  	end
  	users
  end
end
