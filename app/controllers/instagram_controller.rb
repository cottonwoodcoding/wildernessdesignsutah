class InstagramController < ApplicationController
  def index
    @instagram = Instagram.client(access_token: ENV['INSTAGRAM_ACCESS_TOKEN']).user_recent_media
  end
end
