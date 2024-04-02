class TopicsController < ApplicationController
  def new
    @topic = Topic.new
  end
 
  def create
    @topic = Topic.new(topic_params)
    @topic.save!
  end

  def topic_params
    params.require(:topic).permit(:topic)
  end
  

end