class GuesthostprofilesController < ApplicationController
  def index
    @guesthostprofiles = Guesthostprofile.page(params[:page]).per(10)

    render("guesthostprofiles/index.html.erb")
  end

  def show
    @booking = Booking.new
    @guesthostprofile = Guesthostprofile.find(params[:id])

    render("guesthostprofiles/show.html.erb")
  end

  def new
    @guesthostprofile = Guesthostprofile.new

    render("guesthostprofiles/new.html.erb")
  end

  def create
    @guesthostprofile = Guesthostprofile.new

    @guesthostprofile.host_id = params[:host_id]
    @guesthostprofile.user_guest_id = params[:user_guest_id]

    save_status = @guesthostprofile.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/guesthostprofiles/new", "/create_guesthostprofile"
        redirect_to("/guesthostprofiles")
      else
        redirect_back(:fallback_location => "/", :notice => "Guesthostprofile created successfully.")
      end
    else
      render("guesthostprofiles/new.html.erb")
    end
  end

  def edit
    @guesthostprofile = Guesthostprofile.find(params[:id])

    render("guesthostprofiles/edit.html.erb")
  end

  def update
    @guesthostprofile = Guesthostprofile.find(params[:id])

    @guesthostprofile.host_id = params[:host_id]
    @guesthostprofile.user_guest_id = params[:user_guest_id]

    save_status = @guesthostprofile.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/guesthostprofiles/#{@guesthostprofile.id}/edit", "/update_guesthostprofile"
        redirect_to("/guesthostprofiles/#{@guesthostprofile.id}", :notice => "Guesthostprofile updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Guesthostprofile updated successfully.")
      end
    else
      render("guesthostprofiles/edit.html.erb")
    end
  end

  def destroy
    @guesthostprofile = Guesthostprofile.find(params[:id])

    @guesthostprofile.destroy

    if URI(request.referer).path == "/guesthostprofiles/#{@guesthostprofile.id}"
      redirect_to("/", :notice => "Guesthostprofile deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Guesthostprofile deleted.")
    end
  end
end
