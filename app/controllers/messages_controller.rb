class MessagesController < ApplicationController
  def index
    @messages = Message.all

    render("messages/index.html.erb")
  end

  def show
    @message = Message.find(params[:id])

    render("messages/show.html.erb")
  end

  def new
    @message = Message.new

    render("messages/new.html.erb")
  end

  def create
    @message = Message.new

    @message.listing_id = params[:listing_id]
    @message.guest_id = params[:guest_id]
    @message.content = params[:content]
    @message.host_id = params[:host_id]

    save_status = @message.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/messages/new", "/create_message"
        redirect_to("/messages")
      else
        redirect_back(:fallback_location => "/", :notice => "Message created successfully.")
      end
    else
      render("messages/new.html.erb")
    end
  end

  def edit
    @message = Message.find(params[:id])

    render("messages/edit.html.erb")
  end

  def update
    @message = Message.find(params[:id])

    @message.listing_id = params[:listing_id]
    @message.guest_id = params[:guest_id]
    @message.content = params[:content]
    @message.host_id = params[:host_id]

    save_status = @message.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/messages/#{@message.id}/edit", "/update_message"
        redirect_to("/messages/#{@message.id}", :notice => "Message updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Message updated successfully.")
      end
    else
      render("messages/edit.html.erb")
    end
  end

  def destroy
    @message = Message.find(params[:id])

    @message.destroy

    if URI(request.referer).path == "/messages/#{@message.id}"
      redirect_to("/", :notice => "Message deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Message deleted.")
    end
  end
end