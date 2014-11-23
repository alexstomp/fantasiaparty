class AlbumsController < ApplicationController
    # Prevent CSRF attacks by raising an exception.
    # For APIs, you may want to use :null_session instead.
    protect_from_forgery with: :exception
    # Redirect to landing page if not logged in
    before_action :authenticate_user!, :only => [:dashboard]
    layout 'dash', :only => [:dashboard]


    def dash
        @album = Album.find(params[:id])
    end
end
