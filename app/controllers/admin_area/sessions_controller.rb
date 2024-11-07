module AdminArea
  class SessionsController < ApplicationController
    def new
      # This action renders the login form view
    end

    def create
      # Change 'username' to 'email' if that's the input you're using in your form
      admin = Admin.find_by(email: params[:username]) # Use the correct parameter name

      if admin&.authenticate(params[:password]) # Ensure this matches the password field in your form
        session[:admin_id] = admin.id
        redirect_to admin_area_dashboard_path # Redirect to the dashboard after successful login
      else
        flash.now[:alert] = "Invalid email or password" # Alert message for invalid login
        render :new # Re-render the login form with an error message
      end
    end

    def destroy
      session.delete(:admin_id) # Clear the session for the admin
      redirect_to admin_login_path # Redirect to the login page after logout
    end
  end
end

