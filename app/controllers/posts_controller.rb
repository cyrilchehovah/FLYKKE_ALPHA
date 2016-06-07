# require 'Metainspector'
# require 'open-uri'

class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  # GET /posts
  # GET /posts.json
  def index
    @category = params[:cat]
    @posts = Post.where(status: :validated).paginate(page: params[:page]).order('created_at DESC')
    respond_to do |format|
      format.html
      format.js
    end
    @post = Post.new
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
  end

  def new_preview
    search_string = params[:post][:url]
    @page = MetaInspector.new(search_string)
    @object = LinkThumbnailer.generate(search_string)
    @interest = params[:interest]
    @post = Post.new(
      title: @page.best_title,
      interest: @interest,
      description: @page.description,
      graphic_content: @page.images.best,
      url: @page.url,
      site_name: @page.meta['og:site_name']
    )
    if @object.videos.first
      @post.video = @object.videos.first.embed_code
    end
    # render new_post_path
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params) do |post|
    post.user = current_user
    end
    if @post.save
      redirect_to root_path
    else
      render :new, notice: @post.errors.full_messages.first
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    @post.update(post_params)
    redirect_to @post
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :description, :interest, :url, :graphic_content, :video, :site_name, :user_id)
    end
end
