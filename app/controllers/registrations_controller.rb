class RegistrationsController < Devise::RegistrationsController
  def new
    flash[:notice] = "Registration just isn't there yet"
    redirect_to root_path
  end
  private
  def sign_up_params
    params.require(:user).permit(:name,:email,:password,:password_confirmation,:phone)
  end

  def account_update_params
    params.require(:user).permit(:name,:email,:password,:password_confirmation,:phone,:address,:current_password)
  end

end
