class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :set_posts
  before_action :set_companies

  def set_posts
    @entries = Post.order(created_at: :desc).limit(3)
  end

  def set_companies
    @firms = Company.order(created_at: :desc).limit 6
  end

end
