class AdminDashboardController < ApplicationController
  # before_filter :authenticate_user!
  before_action :check_admin

  def check_admin
    redirect_to home_path unless current_user.admin
  end

  def index
    @all_users = User.all
  end

end
