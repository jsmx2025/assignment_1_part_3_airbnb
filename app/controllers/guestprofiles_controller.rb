class GuestprofilesController < ApplicationController
  def index
    @q = Guestprofile.ransack(params[:q])
    @guestprofiles = @q.result(:distinct => true).includes(:guest, :messages, :requests, :reviews, :h_tag_ratings, :bookmarks).page(params[:page]).per(10)

    render("guestprofiles/index.html.erb")
  end

  def show
    @bookmark = Bookmark.new
    @h_tag_rating = HTagRating.new
    @review = Review.new
    @request = Request.new
    @message = Message.new
    @guestprofile = Guestprofile.find(params[:id])

    render("guestprofiles/show.html.erb")
  end

  def new
    @guestprofile = Guestprofile.new

    render("guestprofiles/new.html.erb")
  end

  def create
    @guestprofile = Guestprofile.new

    @guestprofile.guest_id = params[:guest_id]

    save_status = @guestprofile.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/guestprofiles/new", "/create_guestprofile"
        redirect_to("/guestprofiles")
      else
        redirect_back(:fallback_location => "/", :notice => "Guestprofile created successfully.")
      end
    else
      render("guestprofiles/new.html.erb")
    end
  end

  def edit
    @guestprofile = Guestprofile.find(params[:id])

    render("guestprofiles/edit.html.erb")
  end

  def update
    @guestprofile = Guestprofile.find(params[:id])

    @guestprofile.guest_id = params[:guest_id]

    save_status = @guestprofile.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/guestprofiles/#{@guestprofile.id}/edit", "/update_guestprofile"
        redirect_to("/guestprofiles/#{@guestprofile.id}", :notice => "Guestprofile updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Guestprofile updated successfully.")
      end
    else
      render("guestprofiles/edit.html.erb")
    end
  end

  def destroy
    @guestprofile = Guestprofile.find(params[:id])

    @guestprofile.destroy

    if URI(request.referer).path == "/guestprofiles/#{@guestprofile.id}"
      redirect_to("/", :notice => "Guestprofile deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Guestprofile deleted.")
    end
  end
end
