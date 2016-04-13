class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @post = Post.new
    @posts = Post.all
  end

  def new_preview
    raise
    search_string = params[:post][:url]
    @page = MetaInspector.new(search_string)
    @interest = params[:interest]
    @post = Post.new(title: @page.best_title, interest: @interest, description: @page.description, graphic_content: @page.images.best, url: @page.url, site_name: @page.meta['og:site_name'])
    # render new_post_path
    raise
  end
end
