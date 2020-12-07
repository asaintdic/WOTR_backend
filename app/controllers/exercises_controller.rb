class ExercisesController < ApplicationController
  before_action :set_workout, except: [:destroy]

  # GET /exercises
  def index
    @exercises = Exercise.all

    render json: @exercises
  end

  # GET /exercises/1
  def show
    @exercise = Exercise.find(params[:id])
    render json: @exercise
  end

  # # POST /exercises
  def create
   
    @exercise = @workout.exercises.new(exercise_params)
    
    # @workout_exercise = @workout.workout_exercises.find(params[:workout_id])
    
    if @exercise.save 
      # && @workout_exercise.save
      @workout_exercise = @exercise.workout_exercises.new(workout_id: @workout.id, exercise_id: @exercise.id)
      @workout_exercise.save
     

      render json: @workout
    else
      render json:  {error: 'Error creating exercise'}
    end
  end

  # # PATCH/PUT /exercises/1
  # def update
  #   if @exercise.update(exercise_params)
  #     render json: @exercise
  #   else
  #     render json: @exercise.errors, status: :unprocessable_entity
  #   end
  # end

  # # DELETE /exercises/1
  # def destroy
   
  #   @exercise = Exercise.find(params[:id])
  #   @exercise.destroy
   
  #   render json: @workout
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_workout
      @workout = Workout.find(params[:workout_id])
    end

    # Only allow a trusted parameter "white list" through.
    def exercise_params
      params.require(:exercise).permit(:category, :exercise_name, :reps, :equipment, :workout_id)
    end
end
