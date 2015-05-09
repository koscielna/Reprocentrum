class ApplicationController < ActionController::Base
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
