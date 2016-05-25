class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  respond_to :html, :js

  def home
    @post = Post.new
    @posts = Post.where(status: :validated)
    @contact = Contact.new
  end

  def new_preview
    search_string = params[:post][:url]
    @page = MetaInspector.new(search_string)
    @interest = params[:interest]
    @post = Post.new(title: @page.best_title, interest: @interest, description: @page.description, graphic_content: @page.images.best, url: @page.url, site_name: @page.meta['og:site_name'])
    # render new_post_path
  end

  private
  def set_user
    @user = current_user
  end
end
