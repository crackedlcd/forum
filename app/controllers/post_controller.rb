class PostController < ApplicationController

	# GET
  def new
    @post = Post.new
  end

  # POST
  def create
  end

  # DELETE
  def delete
  end

  private

  	def post_params
  		params.require(:post).permit(:content)
  	end
end
