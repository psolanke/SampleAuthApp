class HomeController < ApplicationController

  before_filter :authenticate_user!
  before_action :check_signed_in
  
  def check_signed_in
    redirect_to visitors_path unless signed_in?
  end

  def index
  end
end
