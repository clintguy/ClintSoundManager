class SoundsController < ApplicationController
  helper_method :sort_column, :sort_direction
  def new
  end
  
  def show
    @sound = Sound.find(params[:id])
  end
  
  def index
    @sounds = Sound.order(sort_column + " " + sort_direction)
  end
  
  def create
    @sound = Sound.new(sound_params)
    if @sound.save
      flash[:success] = "Sound Saved"
      redirect_to sound_url(@sound)
    else
      render 'new'
    end
  end
  
  def delete
    @sound = Sound.delete(params[:id])
  end
  
  def update
    @sound = Sound.find(params[:id])
    render "sounds/edit"
  end
  private
  def sound_params
    params.require(:sound).permit(:name, :format, :length, :size)
  end
  def sort_column
    Sound.column_names.include?(params[:sort]) ? params[:sort] : "name"
  end
  
  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end

end