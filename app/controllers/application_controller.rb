class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  layout "home", :only => ["home"]

  def home
  end

  def gallerie
  end

  def options
  end

  def info
  end

end
