class VideosController < ApplicationController
  def create
    @video = Video.new(params)

  end

  def index

    @videos = Video.all
    render json: @videos
  end

  def show

  end
end
