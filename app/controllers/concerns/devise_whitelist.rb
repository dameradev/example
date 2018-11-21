module DeviseWhitelist
  extend ActiveSupport::Concern

  included do
    before_action :permited_attributes_devise, if: :devise_controller?
  end

  def permited_attributes_devise
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
      devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end

end
