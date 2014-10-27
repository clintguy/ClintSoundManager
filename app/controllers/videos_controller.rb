class VideosController < ApplicationController
  
  def index
  
  end

  def show(url)
    embed(url)
  end

end
