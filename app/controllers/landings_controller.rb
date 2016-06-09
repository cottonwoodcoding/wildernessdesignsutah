class LandingsController < ApplicationController
  def index
    @photos = Photo.random.paginate(page: params[:page])
  end

  def bio
  end
end
