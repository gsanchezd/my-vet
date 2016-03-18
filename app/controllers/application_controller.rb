class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :authenticate_user!, except: [:home]

  before_action :set_veterinary

  def after_sign_in_path_for(resource)
    customers_path || stored_location_for(resource) || root_path
  end

  protected
  def set_veterinary

  	@veterinary = current_user.veterinary if current_user

  end

  before_action :set_locale
 
	def set_locale
  		I18n.locale = extract_locale_from_tld || I18n.default_locale
	end

	def extract_locale_from_tld
  		parsed_locale = request.host.split('.').last
  		I18n.available_locales.map(&:to_s).include?(parsed_locale) ? parsed_locale : nil
	end

end
