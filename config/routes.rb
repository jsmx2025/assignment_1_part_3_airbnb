Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root :to => "hostprofiles#index"
  # Routes for the Bookmark resource:
  # CREATE
  get "/bookmarks/new", :controller => "bookmarks", :action => "new"
  post "/create_bookmark", :controller => "bookmarks", :action => "create"

  # READ
  get "/bookmarks", :controller => "bookmarks", :action => "index"
  get "/bookmarks/:id", :controller => "bookmarks", :action => "show"

  # UPDATE
  get "/bookmarks/:id/edit", :controller => "bookmarks", :action => "edit"
  post "/update_bookmark/:id", :controller => "bookmarks", :action => "update"

  # DELETE
  get "/delete_bookmark/:id", :controller => "bookmarks", :action => "destroy"
  #------------------------------

  # Routes for the Booking resource:
  # CREATE
  get "/bookings/new", :controller => "bookings", :action => "new"
  post "/create_booking", :controller => "bookings", :action => "create"

  # READ
  get "/bookings", :controller => "bookings", :action => "index"
  get "/bookings/:id", :controller => "bookings", :action => "show"

  # UPDATE
  get "/bookings/:id/edit", :controller => "bookings", :action => "edit"
  post "/update_booking/:id", :controller => "bookings", :action => "update"

  # DELETE
  get "/delete_booking/:id", :controller => "bookings", :action => "destroy"
  #------------------------------

  # Routes for the H_tag_rating resource:
  # CREATE
  get "/h_tag_ratings/new", :controller => "h_tag_ratings", :action => "new"
  post "/create_h_tag_rating", :controller => "h_tag_ratings", :action => "create"

  # READ
  get "/h_tag_ratings", :controller => "h_tag_ratings", :action => "index"
  get "/h_tag_ratings/:id", :controller => "h_tag_ratings", :action => "show"

  # UPDATE
  get "/h_tag_ratings/:id/edit", :controller => "h_tag_ratings", :action => "edit"
  post "/update_h_tag_rating/:id", :controller => "h_tag_ratings", :action => "update"

  # DELETE
  get "/delete_h_tag_rating/:id", :controller => "h_tag_ratings", :action => "destroy"
  #------------------------------

  # Routes for the G_tag_rating resource:
  # CREATE
  get "/g_tag_ratings/new", :controller => "g_tag_ratings", :action => "new"
  post "/create_g_tag_rating", :controller => "g_tag_ratings", :action => "create"

  # READ
  get "/g_tag_ratings", :controller => "g_tag_ratings", :action => "index"
  get "/g_tag_ratings/:id", :controller => "g_tag_ratings", :action => "show"

  # UPDATE
  get "/g_tag_ratings/:id/edit", :controller => "g_tag_ratings", :action => "edit"
  post "/update_g_tag_rating/:id", :controller => "g_tag_ratings", :action => "update"

  # DELETE
  get "/delete_g_tag_rating/:id", :controller => "g_tag_ratings", :action => "destroy"
  #------------------------------

  # Routes for the Rating resource:
  # CREATE
  get "/ratings/new", :controller => "ratings", :action => "new"
  post "/create_rating", :controller => "ratings", :action => "create"

  # READ
  get "/ratings", :controller => "ratings", :action => "index"
  get "/ratings/:id", :controller => "ratings", :action => "show"

  # UPDATE
  get "/ratings/:id/edit", :controller => "ratings", :action => "edit"
  post "/update_rating/:id", :controller => "ratings", :action => "update"

  # DELETE
  get "/delete_rating/:id", :controller => "ratings", :action => "destroy"
  #------------------------------

  # Routes for the Guesthostprofile resource:
  # CREATE
  get "/guesthostprofiles/new", :controller => "guesthostprofiles", :action => "new"
  post "/create_guesthostprofile", :controller => "guesthostprofiles", :action => "create"

  # READ
  get "/guesthostprofiles", :controller => "guesthostprofiles", :action => "index"
  get "/guesthostprofiles/:id", :controller => "guesthostprofiles", :action => "show"

  # UPDATE
  get "/guesthostprofiles/:id/edit", :controller => "guesthostprofiles", :action => "edit"
  post "/update_guesthostprofile/:id", :controller => "guesthostprofiles", :action => "update"

  # DELETE
  get "/delete_guesthostprofile/:id", :controller => "guesthostprofiles", :action => "destroy"
  #------------------------------

  # Routes for the Review resource:
  # CREATE
  get "/reviews/new", :controller => "reviews", :action => "new"
  post "/create_review", :controller => "reviews", :action => "create"

  # READ
  get "/reviews", :controller => "reviews", :action => "index"
  get "/reviews/:id", :controller => "reviews", :action => "show"

  # UPDATE
  get "/reviews/:id/edit", :controller => "reviews", :action => "edit"
  post "/update_review/:id", :controller => "reviews", :action => "update"

  # DELETE
  get "/delete_review/:id", :controller => "reviews", :action => "destroy"
  #------------------------------

  # Routes for the Request resource:
  # CREATE
  get "/requests/new", :controller => "requests", :action => "new"
  post "/create_request", :controller => "requests", :action => "create"

  # READ
  get "/requests", :controller => "requests", :action => "index"
  get "/requests/:id", :controller => "requests", :action => "show"

  # UPDATE
  get "/requests/:id/edit", :controller => "requests", :action => "edit"
  post "/update_request/:id", :controller => "requests", :action => "update"

  # DELETE
  get "/delete_request/:id", :controller => "requests", :action => "destroy"
  #------------------------------

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
