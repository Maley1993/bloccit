class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  def avatar_url(user)
    gravatar_id = Digest::MD5::hexdigest(user.email).downcase
    "http://gravatar.com/avatar/#{gravatar_id}.png?s=48"
  end

  helper_method :avatar_url
end
