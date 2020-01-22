class ApplicationController < ActionController::Base
  include Clearance::Controller
  protect_from_forgery with: :exception

  def redirect_to_index_if_not_signed_in
    redirect_to '/' unless signed_in?
  end

  def render_404
    render :file => "#{Rails.root}/public/404.html", layout: false, status: :not_found
  end
end
