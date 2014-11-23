class AdminController < ApplicationController
    # Prevent CSRF attacks by raising an exception.
    # For APIs, you may want to use :null_session instead.
    protect_from_forgery with: :exception

    # Redirect to landing page if not logged in
    before_action :authenticate_user!

    # GETS

    def dash
        @albums = Album.where(:archived => false)
        @archive = Album.where(:archived => nil) + Album.where(:archived => true)
    end

    def new_album
    end

    def edit_album
        @album = Album.find(params[:id])
    end

    def save_album
      @album = Album.new( :date => params[:album][:date],
                          :age => params[:album][:age],
                          :nom => params[:album][:nom],
                          :description => params[:album][:description]
                        )
      if @album.save
        redirect_to edit_album_path(@album)
      end
    end

    def update_album
        @album = Album.find(params[:id])
        @album.update(:date => params[:album][:date],
                      :age => params[:album][:age],
                      :nom => params[:album][:nom],
                      :description => params[:album][:description])
        
        redirect_to edit_album_path(@album)
    end

    def new_album_picture
    end

    def add_album_picture
    end

    # PUTS

    #update order of all albums
    def update
    end

    def archive_album
        @album = Album.find(params[:id])
        @album.update(:archived => true)
        redirect_to admin_path
    end

    def publish_album
        @album = Album.find(params[:id])
        @album.update(:archived => false)
        redirect_to admin_path
    end

    # DELETE

    def delete_album_picture
    end

end
