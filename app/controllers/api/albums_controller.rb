module Api
  class AlbumsController < ApplicationController
    protect_from_forgery with: :null_session
    def index
      albums = Album.all
      render json: albums, only: [:name,  :year_released, :running_time],
                   include: {
                              band: {only: [:name]}, 
                              genre: {only: [:name]},
                              songs: {only: [:name, :running_time, :track]}
                            }
    end
  end
end
