Rails.application.routes.draw do
  devise_for :user_hosts
  # Routes for the User_host resource:
  # READ
  get "/user_hosts", :controller => "user_hosts", :action => "index"
  get "/user_hosts/:id", :controller => "user_hosts", :action => "show"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
