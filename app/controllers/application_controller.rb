class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :family_name, :first_name, :family_name_kana, :first_name_kana, :gender_id, :birth_date, :phone_number, :postal_code, :prefecture_id, :city, :street_address, :membership_plan_id])
  end
end
