class ExercisesController < ApplicationController
  before_action :set_workout, except: [:destroy]

  
  def index
    @exercises = Exercise.all

    render json: @exercises
  end

  
  def show
    @exercise = Exercise.find(params[:id])
    render json: @exercise
  end


  def create
    @exercise = @workout.exercises.new(exercise_params)
    if @exercise.save 
      @workout_exercise = @exercise.workout_exercises.new(workout_id: @workout.id, exercise_id: @exercise.id)
      @workout_exercise.save
    render json: @workout
    else
      render json:  {error: 'Error creating exercise'}
    end
  end



  private
   
    def set_workout
      @workout = Workout.find(params[:workout_id])
    end
    
    def exercise_params
      params.require(:exercise).permit(:category, :exercise_name, :reps, :equipment, :workout_id)
    end
end
