class UserGuestsController < ApplicationController
  def index
    @user_guests = UserGuest.all
  end

  def show
    @user_guest = UserGuest.find(params[:id])
  end
end
