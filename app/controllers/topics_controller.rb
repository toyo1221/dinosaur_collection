class TopicsController < ApplicationController
  def new
    @topic = Topic.new
  end
 
  def create
    @topic = Topic.new(topic_params)
    @topic.save!
    redirect_to root_path
  end

  def destroy
    @topic = Topic.find(params[:id])
    @topic.destroy
    redirect_to root_path
  end

  private
  def topic_params
    params.require(:topic).permit(:topic)
  end

end