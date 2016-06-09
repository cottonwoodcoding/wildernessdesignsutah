class LandingsController < ApplicationController
  def index
    @photos = Photo.paginate(page: params[:page])
  end

  def bio
  end
end
