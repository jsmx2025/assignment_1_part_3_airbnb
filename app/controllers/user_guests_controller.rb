class UserGuestsController < ApplicationController
  def index
    @user_guests = UserGuest.page(params[:page]).per(10)
  end

  def show
    @user_guest = UserGuest.find(params[:id])
  end
end
