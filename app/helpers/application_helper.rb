module ApplicationHelper
  def check_language
    subdomain = request.subdomain.blank? || request.subdomain == "www" ? nil : request.subdomain
    @current_language = subdomain || "plm"
  end
  def current_language
    @current_language
  end
  #helper_method :current_language
end
