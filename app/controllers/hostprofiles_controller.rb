class HostprofilesController < ApplicationController
  before_action :current_user_must_be_hostprofile_user, :only => [:edit, :update, :destroy]

  def current_user_must_be_hostprofile_user_host
    hostprofile = Hostprofile.find(params[:id])

    unless current_user == hostprofile.host
      redirect_to :back, :alert => "You are not authorized for that."
    end
  end

  def index
    @q = Hostprofile.ransack(params[:q])
    @hostprofiles = @q.result(:distinct => true).includes(:host, :messages, :reviews, :bookings, :g_tag_ratings, :listings).page(params[:page]).per(10)

    render("hostprofiles/index.html.erb")
  end

  def show
    @listing = Listing.new
    @g_tag_rating = GTagRating.new
    @booking = Booking.new
    @review = Review.new
    @message = Message.new
    @hostprofile = Hostprofile.find(params[:id])

    render("hostprofiles/show.html.erb")
  end

  def new
    @hostprofile = Hostprofile.new

    render("hostprofiles/new.html.erb")
  end

  def create
    @hostprofile = Hostprofile.new

    @hostprofile.user_host_id = params[:user_host_id]

    save_status = @hostprofile.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/hostprofiles/new", "/create_hostprofile"
        redirect_to("/hostprofiles")
      else
        redirect_back(:fallback_location => "/", :notice => "Hostprofile created successfully.")
      end
    else
      render("hostprofiles/new.html.erb")
    end
  end

  def edit
    @hostprofile = Hostprofile.find(params[:id])

    render("hostprofiles/edit.html.erb")
  end

  def update
    @hostprofile = Hostprofile.find(params[:id])

    save_status = @hostprofile.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/hostprofiles/#{@hostprofile.id}/edit", "/update_hostprofile"
        redirect_to("/hostprofiles/#{@hostprofile.id}", :notice => "Hostprofile updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Hostprofile updated successfully.")
      end
    else
      render("hostprofiles/edit.html.erb")
    end
  end

  def destroy
    @hostprofile = Hostprofile.find(params[:id])

    @hostprofile.destroy

    if URI(request.referer).path == "/hostprofiles/#{@hostprofile.id}"
      redirect_to("/", :notice => "Hostprofile deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Hostprofile deleted.")
    end
  end
end
