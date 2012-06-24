class RegistrationsController < Devise::RegistrationsControllers

  protected

  def after_sign_up_path_for(resource)
    users_root_path
  end
end
