class WorkoutExercisesController < ApplicationController
  before_action :set_workout_exercise, only: [:show, :update, :destroy]

  
  def index
    @workout_exercises = WorkoutExercise.all
      render json: @workout_exercises
  end

  def show
      render json: @workout_exercise
  end

 
  def create
    @workout_exercise = WorkoutExercise.new(workout_exercise_params)
     
    if @workout_exercise.save
      render json: @workout_exercise, status: :created, location: @workout_exercise
    else
      render json: @workout_exercise.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @workout_exercise.destroy
  end

  private

  def workout_exercise_params
    params.require(:workout_exercise).permit(:workout_id, :exercise_id)
  end
end
