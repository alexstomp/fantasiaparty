class AlbumsController < ApplicationController
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def show
    @album = Album.find(params[:id])
  end

  def new
  end

  def save
  end

  def toggle_archive
  end

end
