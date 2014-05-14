class PostsController < ApplicationController

	# GET
  def new
    @post = Post.new
  end

  # POST
  def create
    @post = Post.new(content: params[:post][:content], user_id: current_user.id, topic_id: params[:post][:topic_id])
    if @post.save
      flash[:success] ="Post created"
      redirect_to "/topics/#{post.topic}"
    else
      render action: 'new'
    end
  end

  # DELETE
  def delete
    @post.destroy
    
  end

  private

  	def post_params
  		params.require(:post).permit(:content)
  	end
end
