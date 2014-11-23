class Album < ActiveRecord::Base
    has_many :pictures

    def create
        Album.create(album_params)
    end

    def is_archived?
        return false if archived == false
        return true
    end

    private

    def album_params
        params.require(:album)
    end
end