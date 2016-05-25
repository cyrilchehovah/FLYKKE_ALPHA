class ViewsController < ApplicationController
  def create
    @post = Post.where(status: :validated).find(params[:post_id])
    @ad = Ad.joins(:ad_interests).where(ad_interests: {interest: @post.interest}).order("RANDOM()").first
    @view = View.create(ad: @ad, user: current_user, post: @post)
  end
end
