class UserHostsController < ApplicationController
  def index
    @user_hosts = UserHost.all
  end

  def show
    @user_host = UserHost.find(params[:id])
  end
end
