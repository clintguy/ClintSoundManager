class SoundsController < ApplicationController
  def new
  end
  
  def show
    @sound = Sound.find(params[:id])
  end
  
  def index
    @sounds = Sound.all
  end
  
  def create
    @sound = Sound.new(sound_params)
    
    @sound.save
    redirect_to @sound
  end
  
  def delete
    @sound = Sound.delete(params[:id])
  end
  
  private
  def sound_params
    params.require(:sound).permit(:name, :format, :length, :size)
  end
end