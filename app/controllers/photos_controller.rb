class PhotosController < ApplicationController
  before_action :authenticate_user!
  before_action :check_admin
  before_action :photo, except: [:index, :create]

  def index
    @photos = Photo.paginate(page: params[:page])
    @photo = Photo.new
  end

  def edit
  end

  def update
    if @photo.update(photo_params)
      flash[:success] = 'Photo updated!'
      redirect_to photos_path
    else
      render :edit
    end
  end

  def create
    @photo = Photo.new(photo_params)
    if @photo.save
      flash[:success] = 'Photo added!'
      redirect_to photos_path
    else
      render :new
    end
  end

  def destroy
    @photo.destroy
    flash[:success] = 'Photo deleted!'
    redirect_to photos_path
  end

  private

    def photo_params
      params.require(:photo).permit(:attachment, :caption)
    end

    def check_admin
      unless current_user.admin
        flash[:error] = 'Unauthorized'
        redirect_to root_path
      end
    end

    def photo
      @photo = Photo.find(params[:id])
    end
end
