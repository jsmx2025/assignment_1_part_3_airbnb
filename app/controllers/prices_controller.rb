class PricesController < ApplicationController
  def index
    @prices = Price.page(params[:page]).per(10)

    render("prices/index.html.erb")
  end

  def show
    @price = Price.find(params[:id])

    render("prices/show.html.erb")
  end

  def new
    @price = Price.new

    render("prices/new.html.erb")
  end

  def create
    @price = Price.new

    @price.price_per_night = params[:price_per_night]
    @price.availability_id = params[:availability_id]

    save_status = @price.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/prices/new", "/create_price"
        redirect_to("/prices")
      else
        redirect_back(:fallback_location => "/", :notice => "Price created successfully.")
      end
    else
      render("prices/new.html.erb")
    end
  end

  def edit
    @price = Price.find(params[:id])

    render("prices/edit.html.erb")
  end

  def update
    @price = Price.find(params[:id])

    @price.price_per_night = params[:price_per_night]
    @price.availability_id = params[:availability_id]

    save_status = @price.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/prices/#{@price.id}/edit", "/update_price"
        redirect_to("/prices/#{@price.id}", :notice => "Price updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Price updated successfully.")
      end
    else
      render("prices/edit.html.erb")
    end
  end

  def destroy
    @price = Price.find(params[:id])

    @price.destroy

    if URI(request.referer).path == "/prices/#{@price.id}"
      redirect_to("/", :notice => "Price deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Price deleted.")
    end
  end
end
