class ListingsController < ApplicationController
  def index
    @q = Listing.ransack(params[:q])
    @listings = @q.result(:distinct => true).includes(:host, :tags, :availabilities, :messages, :requests, :booking, :reviews, :bookmarks).page(params[:page]).per(10)
    @location_hash = Gmaps4rails.build_markers(@listings.where.not(:location_latitude => nil)) do |listing, marker|
      marker.lat listing.location_latitude
      marker.lng listing.location_longitude
      marker.infowindow "<h5><a href='/listings/#{listing.id}'>#{listing.title}</a></h5><small>#{listing.location_formatted_address}</small>"
    end

    render("listings/index.html.erb")
  end

  def show
    @bookmark = Bookmark.new
    @review = Review.new
    @request = Request.new
    @message = Message.new
    @availability = Availability.new
    @listing_tag = ListingTag.new
    @listing = Listing.find(params[:id])

    render("listings/show.html.erb")
  end

  def new
    @listing = Listing.new

    render("listings/new.html.erb")
  end

  def create
    @listing = Listing.new

    @listing.title = params[:title]
    @listing.location = params[:location]
    @listing.policies = params[:policies]
    @listing.default_price_per_night = params[:default_price_per_night]
    @listing.host_id = params[:host_id]

    save_status = @listing.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/listings/new", "/create_listing"
        redirect_to("/listings")
      else
        redirect_back(:fallback_location => "/", :notice => "Listing created successfully.")
      end
    else
      render("listings/new.html.erb")
    end
  end

  def edit
    @listing = Listing.find(params[:id])

    render("listings/edit.html.erb")
  end

  def update
    @listing = Listing.find(params[:id])

    @listing.title = params[:title]
    @listing.location = params[:location]
    @listing.policies = params[:policies]
    @listing.default_price_per_night = params[:default_price_per_night]
    @listing.host_id = params[:host_id]

    save_status = @listing.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/listings/#{@listing.id}/edit", "/update_listing"
        redirect_to("/listings/#{@listing.id}", :notice => "Listing updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Listing updated successfully.")
      end
    else
      render("listings/edit.html.erb")
    end
  end

  def destroy
    @listing = Listing.find(params[:id])

    @listing.destroy

    if URI(request.referer).path == "/listings/#{@listing.id}"
      redirect_to("/", :notice => "Listing deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Listing deleted.")
    end
  end
end
