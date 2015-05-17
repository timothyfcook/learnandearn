class TopicsController < ApplicationController
  before_action :set_topic, only: [:show, :edit, :update, :destroy]

  # GET /topics.json
  def index
    render json: Topic.all
  end
end
