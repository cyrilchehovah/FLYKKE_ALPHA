class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  respond_to :html, :js

  def home
    @category = params[:category].presence || 'all'
    @post = Post.new
    @posts = Post.where(status: :validated)
    if @category != "all"
      @posts = @posts.where(interest: @category.capitalize)
    end
    @posts= @posts.paginate(page: params[:page]).order('created_at DESC')
    puts(@posts.count)
    respond_to do |format|
      format.html
      format.js
    end
  end

  def new_preview
    search_string = params[:post][:url]
    @page = MetaInspector.new(search_string)
    @object = LinkThumbnailer.generate(search_string)
    @interest = params[:interest]
    @post = Post.new(title: @page.best_title, interest: @interest, description: @page.description, graphic_content: @page.images.best, video: @object.videos.first.embed_code, url: @page.url, site_name: @page.meta['og:site_name'])
    # render new_post_path
  end

  private
  def set_user
    @user = current_user
  end
end
