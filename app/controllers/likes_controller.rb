class LikesController < ApplicationController
  # before_action :find_likeable
  before_action :authenticate_user!
  respond_to :js

  def flykke
    @post = Post.find(params[:id])
    @post.liked_by current_user, :vote => 'flykke', :vote_scope => 'flykke'
    redirect_to :back
  end
end
