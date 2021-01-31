class WorkoutsController < ApplicationController
  before_action :set_workout, only: [:show, :update, :destroy]

  
  def index
    @workouts = Workout.all
  
    render json: @workouts
  end

  
  def show
  
    render json: @workout
  end

 
  def create
    @workout = Workout.new(workout_params)

    if @workout.save
      render json: @workout, status: :created, location: @workout
    else
      render json: {error: 'Error Making new Workout'}
    end
  end


  def destroy
    @workout.destroy

    render json: @workout
  end

  
  private
  
    
  def set_workout
    @workout = Workout.find(params[:id])
  end

    
  def workout_params
    params.require(:workout).permit(:title, :note, :date, :user_id)
  end
end
