class HTagRatingsController < ApplicationController
  def index
    @q = HTagRating.ransack(params[:q])
    @h_tag_ratings = @q.result(:distinct => true).includes(:guest, :rating).page(params[:page]).per(10)

    render("h_tag_ratings/index.html.erb")
  end

  def show
    @h_tag_rating = HTagRating.find(params[:id])

    render("h_tag_ratings/show.html.erb")
  end

  def new
    @h_tag_rating = HTagRating.new

    render("h_tag_ratings/new.html.erb")
  end

  def create
    @h_tag_rating = HTagRating.new

    @h_tag_rating.overall_rating = params[:overall_rating]
    @h_tag_rating.rating_id = params[:rating_id]
    @h_tag_rating.guest_id = params[:guest_id]

    save_status = @h_tag_rating.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/h_tag_ratings/new", "/create_h_tag_rating"
        redirect_to("/h_tag_ratings")
      else
        redirect_back(:fallback_location => "/", :notice => "H tag rating created successfully.")
      end
    else
      render("h_tag_ratings/new.html.erb")
    end
  end

  def edit
    @h_tag_rating = HTagRating.find(params[:id])

    render("h_tag_ratings/edit.html.erb")
  end

  def update
    @h_tag_rating = HTagRating.find(params[:id])

    @h_tag_rating.overall_rating = params[:overall_rating]
    @h_tag_rating.rating_id = params[:rating_id]
    @h_tag_rating.guest_id = params[:guest_id]

    save_status = @h_tag_rating.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/h_tag_ratings/#{@h_tag_rating.id}/edit", "/update_h_tag_rating"
        redirect_to("/h_tag_ratings/#{@h_tag_rating.id}", :notice => "H tag rating updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "H tag rating updated successfully.")
      end
    else
      render("h_tag_ratings/edit.html.erb")
    end
  end

  def destroy
    @h_tag_rating = HTagRating.find(params[:id])

    @h_tag_rating.destroy

    if URI(request.referer).path == "/h_tag_ratings/#{@h_tag_rating.id}"
      redirect_to("/", :notice => "H tag rating deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "H tag rating deleted.")
    end
  end
end
