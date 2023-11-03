class ApplicationController < ActionController::Base
  # before_actionを使い各アクションの事前処理として設定
  before_action :configure_permitted_parameters, if: :devise_controller?

  private
  # sign_up（新規登録の処理）に対して、各キーのパラメーターを新たに許可
  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :family_name, :first_name, :family_name_kana, :first_name_kana, :gender_id, :birth_date, :phone_number, :postal_code, :prefecture_id, :city, :street_address, :membership_plan_id])
  # end
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :family_name, :first_name, :family_name_kana, :first_name_kana, :gender_id, :birth_date, :phone_number, :membership_plan_id])
  end
end
