Rails.application.routes.draw do

  resources :users, only: :index

  post 'get_users'=> 'api#get_users', :as => :get_users
end
