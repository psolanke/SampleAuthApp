class VisitorsController < ApplicationController
  before_action :check_signed_in

  def check_signed_in
    redirect_to home_path if signed_in?
  end
  def index
  end
end
