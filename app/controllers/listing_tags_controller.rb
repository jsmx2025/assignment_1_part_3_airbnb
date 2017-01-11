class ListingTagsController < ApplicationController
  def index
    @listing_tags = ListingTag.all

    render("listing_tags/index.html.erb")
  end

  def show
    @listing_tag = ListingTag.find(params[:id])

    render("listing_tags/show.html.erb")
  end

  def new
    @listing_tag = ListingTag.new

    render("listing_tags/new.html.erb")
  end

  def create
    @listing_tag = ListingTag.new

    @listing_tag.private_room = params[:private_room]
    @listing_tag.entire_home = params[:entire_home]
    @listing_tag.number_of_bedrooms = params[:number_of_bedrooms]
    @listing_tag.number_of_bathrooms = params[:number_of_bathrooms]
    @listing_tag.number_of_beds = params[:number_of_beds]
    @listing_tag.max_occupants = params[:max_occupants]
    @listing_tag.city = params[:city]
    @listing_tag.neighborhood = params[:neighborhood]
    @listing_tag.listing_id = params[:listing_id]

    save_status = @listing_tag.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/listing_tags/new", "/create_listing_tag"
        redirect_to("/listing_tags")
      else
        redirect_back(:fallback_location => "/", :notice => "Listing tag created successfully.")
      end
    else
      render("listing_tags/new.html.erb")
    end
  end

  def edit
    @listing_tag = ListingTag.find(params[:id])

    render("listing_tags/edit.html.erb")
  end

  def update
    @listing_tag = ListingTag.find(params[:id])

    @listing_tag.private_room = params[:private_room]
    @listing_tag.entire_home = params[:entire_home]
    @listing_tag.number_of_bedrooms = params[:number_of_bedrooms]
    @listing_tag.number_of_bathrooms = params[:number_of_bathrooms]
    @listing_tag.number_of_beds = params[:number_of_beds]
    @listing_tag.max_occupants = params[:max_occupants]
    @listing_tag.city = params[:city]
    @listing_tag.neighborhood = params[:neighborhood]
    @listing_tag.listing_id = params[:listing_id]

    save_status = @listing_tag.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/listing_tags/#{@listing_tag.id}/edit", "/update_listing_tag"
        redirect_to("/listing_tags/#{@listing_tag.id}", :notice => "Listing tag updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Listing tag updated successfully.")
      end
    else
      render("listing_tags/edit.html.erb")
    end
  end

  def destroy
    @listing_tag = ListingTag.find(params[:id])

    @listing_tag.destroy

    if URI(request.referer).path == "/listing_tags/#{@listing_tag.id}"
      redirect_to("/", :notice => "Listing tag deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Listing tag deleted.")
    end
  end
end
