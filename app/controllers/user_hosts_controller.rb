class UserHostsController < ApplicationController
  def index
    @user_hosts = UserHost.page(params[:page]).per(10)
  end

  def show
    @user_host = UserHost.find(params[:id])
  end
end
