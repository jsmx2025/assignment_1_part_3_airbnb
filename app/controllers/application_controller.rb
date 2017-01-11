class ApplicationController < ActionController::Base
  before_action :authenticate_user_host!

  protect_from_forgery with: :exception
end
