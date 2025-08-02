class ApplicationController < ActionController::Base

  protected
  
  def after_sign_in_path_for(resource)
    # 'dashboard_path' will be the route for the user dashboard we create later
    dashboard_path || root_path
  end
end
