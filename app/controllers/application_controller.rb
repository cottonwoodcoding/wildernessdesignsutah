class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def gallery_photos
    @photos = Photo.all
  end

  helper_method :gallery_photos

  private

  #-> Prelang (user_login:devise)
  def require_user_signed_in
    unless user_signed_in?

      # If the user came from a page, we can send them back.  Otherwise, send
      # them to the root path.
      fallback_redirect = if request.env['HTTP_REFERER']
                            :back
                          elsif defined?(root_path)
                            root_path
                          else
                            '/'
                          end

      redirect_to fallback_redirect, flash: { error: 'You must be signed in to view this page.' }
    end
  end
end
