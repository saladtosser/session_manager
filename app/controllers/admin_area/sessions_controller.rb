module AdminArea
  class SessionsController < ApplicationController
    def new
      # Renders the login form view
    end

    def create
      # Corrected: Change to `email` to match the form input
      admin = Admin.find_by(email: params[:email])

      if admin&.authenticate(params[:password])
        session[:admin_id] = admin.id
        redirect_to admin_area_dashboard_path
      else
        flash.now[:alert] = "Invalid email or password"
        render :new
      end
    end

    def destroy
      session.delete(:admin_id)
      redirect_to admin_login_path
    end
  end
end

