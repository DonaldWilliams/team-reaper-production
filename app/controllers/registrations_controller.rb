class RegistrationsController < Devise::RegistrationsController
  prepend_before_action :check_captcha, only: [:create]

  private

  def check_captcha
    unless verify_recaptcha
      redirect_to :back
    end
  end

end
