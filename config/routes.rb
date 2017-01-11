Rails.application.routes.draw do
  # Routes for the Guestprofile resource:
  # CREATE
  get "/guestprofiles/new", :controller => "guestprofiles", :action => "new"
  post "/create_guestprofile", :controller => "guestprofiles", :action => "create"

  # READ
  get "/guestprofiles", :controller => "guestprofiles", :action => "index"
  get "/guestprofiles/:id", :controller => "guestprofiles", :action => "show"

  # UPDATE
  get "/guestprofiles/:id/edit", :controller => "guestprofiles", :action => "edit"
  post "/update_guestprofile/:id", :controller => "guestprofiles", :action => "update"

  # DELETE
  get "/delete_guestprofile/:id", :controller => "guestprofiles", :action => "destroy"
  #------------------------------

  devise_for :user_guests
  # Routes for the User_guest resource:
  # READ
  get "/user_guests", :controller => "user_guests", :action => "index"
  get "/user_guests/:id", :controller => "user_guests", :action => "show"


  # Routes for the Message resource:
  # CREATE
  get "/messages/new", :controller => "messages", :action => "new"
  post "/create_message", :controller => "messages", :action => "create"

  # READ
  get "/messages", :controller => "messages", :action => "index"
  get "/messages/:id", :controller => "messages", :action => "show"

  # UPDATE
  get "/messages/:id/edit", :controller => "messages", :action => "edit"
  post "/update_message/:id", :controller => "messages", :action => "update"

  # DELETE
  get "/delete_message/:id", :controller => "messages", :action => "destroy"
  #------------------------------

  # Routes for the Price resource:
  # CREATE
  get "/prices/new", :controller => "prices", :action => "new"
  post "/create_price", :controller => "prices", :action => "create"

  # READ
  get "/prices", :controller => "prices", :action => "index"
  get "/prices/:id", :controller => "prices", :action => "show"

  # UPDATE
  get "/prices/:id/edit", :controller => "prices", :action => "edit"
  post "/update_price/:id", :controller => "prices", :action => "update"

  # DELETE
  get "/delete_price/:id", :controller => "prices", :action => "destroy"
  #------------------------------

  # Routes for the Availability resource:
  # CREATE
  get "/availabilities/new", :controller => "availabilities", :action => "new"
  post "/create_availability", :controller => "availabilities", :action => "create"

  # READ
  get "/availabilities", :controller => "availabilities", :action => "index"
  get "/availabilities/:id", :controller => "availabilities", :action => "show"

  # UPDATE
  get "/availabilities/:id/edit", :controller => "availabilities", :action => "edit"
  post "/update_availability/:id", :controller => "availabilities", :action => "update"

  # DELETE
  get "/delete_availability/:id", :controller => "availabilities", :action => "destroy"
  #------------------------------

  # Routes for the Listing_tag resource:
  # CREATE
  get "/listing_tags/new", :controller => "listing_tags", :action => "new"
  post "/create_listing_tag", :controller => "listing_tags", :action => "create"

  # READ
  get "/listing_tags", :controller => "listing_tags", :action => "index"
  get "/listing_tags/:id", :controller => "listing_tags", :action => "show"

  # UPDATE
  get "/listing_tags/:id/edit", :controller => "listing_tags", :action => "edit"
  post "/update_listing_tag/:id", :controller => "listing_tags", :action => "update"

  # DELETE
  get "/delete_listing_tag/:id", :controller => "listing_tags", :action => "destroy"
  #------------------------------

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
