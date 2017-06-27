class OrdersController < ApplicationController

	require "uri"
	require "net/http"

  def index
    @orders = Order.all
    @users = JSON.parse(Net::HTTP.post_form(URI.parse('http://localhost:3000/get_users'), {}).body)
  end

end
