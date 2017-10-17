class PasswordsController < Devise::PasswordsController
  prepend_before_action :check_captcha, only: [:create,:update]

  private

  def check_captcha
    unless verify_recaptcha
      redirect_to :back
    end
  end

end
