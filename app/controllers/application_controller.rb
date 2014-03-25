class ApplicationController < ActionController::Base
  protect_from_forgery
  # before_filter :authenticate_user!
  def after_sign_in_path_for(resource_or_scope)
    if current_user.user_profile.present?

      user_profile_path(current_user.user_profile.try(:id))
    else

      new_user_profile_path
    end
  end

  def after_sign_out_path_for(resource_or_scope)
    new_user_session_path
  end

end
