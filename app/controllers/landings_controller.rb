class LandingsController < ApplicationController
  def index
    @photos = Photo.random
  end

  def bio
  end
end
