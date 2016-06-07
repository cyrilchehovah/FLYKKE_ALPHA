class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :set_contact
  before_action :set_post

  private
  def set_contact
    @contact = Contact.new
  end

  def set_post
    @post = Post.new
  end
end
