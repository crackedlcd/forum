class TopicController < ApplicationController

	# GET /topics
	# make Topic#index root path
	def index
	end

	# GET /topics
  def new
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

  	def contact_params
  		params.require(:topic).permit(:title)
  	end
end
