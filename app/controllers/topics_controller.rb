class TopicsController < ApplicationController

	# GET /topics
	# make Topics#index root path
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
    @topic = Topic.new(title: params[:topic][:title], user_id: current_user.id)
    current_user.topics.build(topic_params)

    if @topic.save
      @post = Post.new(content: params[:post][:content], topic_id: @topic.id, user_id: current_user.id)
      if @post.save
        flash[:success] = "Topic successfully created."
        redirect_to topics_url
      else
        flash[:error] = "Something went wrong creating a post"
        redirect_to new_topics_path
      end
    else
      flash[:error] = "Something went wrong creating a topic"
      redirect_to new_topics_path
    end
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
        :post => [:id, :content])
  	end
end
