class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  layout "home", :only => ["home"]

  def home
  end

  def galleries
    @albums = Album.where(:archived => false)
  end

  def options
  end

  def contact
  end

end
