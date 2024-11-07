# app/controllers/admin_area/registrations_controller.rb
module AdminArea
  class RegistrationsController < ApplicationController
    before_action :require_admin

    def index
      @registrations = Registration.all
      @total_registrations = @registrations.count
      @registrations_by_college = @registrations.group(:college).count
      @recent_registrations = @registrations.order(created_at: :desc).limit(10)
      @daily_registrations = @registrations.group("DATE(created_at)").count
    end

    private

    def require_admin
      redirect_to admin_login_path unless session[:admin_id]
    end
  end
end

