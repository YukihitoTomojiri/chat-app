class ApplicationController < ActionController::Base
  before_action :authenticate_user! #authenticate_user!は処理が呼ばれた段階でユーザーがログインしていなければ、ログイン画面に遷移させるメソッド
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
