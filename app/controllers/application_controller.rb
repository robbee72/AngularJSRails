class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
#   protect_from_forgery with: :exception
#
#   after_action :set_csrf_cookie_for_ng
#
#   def set_csrf_cookie_for_ng
#     cookies['XSRF-TOKEN'] = form_authenticity_token if protect_against_forgery?
#   end
#
# protected
#
#   def verified_request?
#     super || form_authenticity_token == request.headers['X-XSRF-TOKEN']
#   end
# end
before_action :configure_permitted_parameters, if: :devise_controller?

 protected

 def configure_permitted_parameters
   devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
 end
end
