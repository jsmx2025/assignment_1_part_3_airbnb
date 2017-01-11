Rails.application.routes.draw do
  # Routes for the Listing resource:
  # CREATE
  get "/listings/new", :controller => "listings", :action => "new"
  post "/create_listing", :controller => "listings", :action => "create"

  # READ
  get "/listings", :controller => "listings", :action => "index"
  get "/listings/:id", :controller => "listings", :action => "show"

  # UPDATE
  get "/listings/:id/edit", :controller => "listings", :action => "edit"
  post "/update_listing/:id", :controller => "listings", :action => "update"

  # DELETE
  get "/delete_listing/:id", :controller => "listings", :action => "destroy"
  #------------------------------

  # Routes for the Hostprofile resource:
  # CREATE
  get "/hostprofiles/new", :controller => "hostprofiles", :action => "new"
  post "/create_hostprofile", :controller => "hostprofiles", :action => "create"

  # READ
  get "/hostprofiles", :controller => "hostprofiles", :action => "index"
  get "/hostprofiles/:id", :controller => "hostprofiles", :action => "show"

  # UPDATE
  get "/hostprofiles/:id/edit", :controller => "hostprofiles", :action => "edit"
  post "/update_hostprofile/:id", :controller => "hostprofiles", :action => "update"

  # DELETE
  get "/delete_hostprofile/:id", :controller => "hostprofiles", :action => "destroy"
  #------------------------------

  devise_for :user_hosts
  # Routes for the User_host resource:
  # READ
  get "/user_hosts", :controller => "user_hosts", :action => "index"
  get "/user_hosts/:id", :controller => "user_hosts", :action => "show"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
