# app/controllers/admin_area/event_sessions_controller.rb
module AdminArea
  class EventSessionsController < ApplicationController
    before_action :require_admin

    def new
      @event_session = EventSession.new
    end

    def create
      @event_session = EventSession.new(event_session_params)
      if @event_session.save
        redirect_to admin_area_dashboard_path, notice: "Session created successfully."
      else
        render :new, alert: "Error creating session."
      end
    end

    private

    def event_session_params
      params.require(:event_session).permit(:name, :date, :location)
    end

    def require_admin
      redirect_to admin_area_login_path unless session[:admin_id]
    end
  end
end

