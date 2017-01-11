class GTagRatingsController < ApplicationController
  def index
    @g_tag_ratings = GTagRating.all

    render("g_tag_ratings/index.html.erb")
  end

  def show
    @g_tag_rating = GTagRating.find(params[:id])

    render("g_tag_ratings/show.html.erb")
  end

  def new
    @g_tag_rating = GTagRating.new

    render("g_tag_ratings/new.html.erb")
  end

  def create
    @g_tag_rating = GTagRating.new

    @g_tag_rating.accuracy = params[:accuracy]
    @g_tag_rating.communication = params[:communication]
    @g_tag_rating.cleanliness = params[:cleanliness]
    @g_tag_rating.location = params[:location]
    @g_tag_rating.check_in = params[:check_in]
    @g_tag_rating.value = params[:value]
    @g_tag_rating.rating_id = params[:rating_id]
    @g_tag_rating.host_id = params[:host_id]

    save_status = @g_tag_rating.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/g_tag_ratings/new", "/create_g_tag_rating"
        redirect_to("/g_tag_ratings")
      else
        redirect_back(:fallback_location => "/", :notice => "G tag rating created successfully.")
      end
    else
      render("g_tag_ratings/new.html.erb")
    end
  end

  def edit
    @g_tag_rating = GTagRating.find(params[:id])

    render("g_tag_ratings/edit.html.erb")
  end

  def update
    @g_tag_rating = GTagRating.find(params[:id])

    @g_tag_rating.accuracy = params[:accuracy]
    @g_tag_rating.communication = params[:communication]
    @g_tag_rating.cleanliness = params[:cleanliness]
    @g_tag_rating.location = params[:location]
    @g_tag_rating.check_in = params[:check_in]
    @g_tag_rating.value = params[:value]
    @g_tag_rating.rating_id = params[:rating_id]
    @g_tag_rating.host_id = params[:host_id]

    save_status = @g_tag_rating.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/g_tag_ratings/#{@g_tag_rating.id}/edit", "/update_g_tag_rating"
        redirect_to("/g_tag_ratings/#{@g_tag_rating.id}", :notice => "G tag rating updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "G tag rating updated successfully.")
      end
    else
      render("g_tag_ratings/edit.html.erb")
    end
  end

  def destroy
    @g_tag_rating = GTagRating.find(params[:id])

    @g_tag_rating.destroy

    if URI(request.referer).path == "/g_tag_ratings/#{@g_tag_rating.id}"
      redirect_to("/", :notice => "G tag rating deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "G tag rating deleted.")
    end
  end
end
