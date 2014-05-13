class TopicsController < ApplicationController

	# GET /topics
	# make Topic#index root path
	def index
		@topic = Topic.all
	end

	# GET /topics
  def new
  	@topic = Topic.new
    @post = Post.new
  end

  # POST /topics
  def create
  end

  # DELETE /topic/:id
  def delete
  end

  private

  	def set_topic
  		@topic = Topic.find(params[:id])
  	end

  	def topic_params
  		params.require(:topic).permit(:title,
        :post_attributes => [:id, :content])
  	end
end
