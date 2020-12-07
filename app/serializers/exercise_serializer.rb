class ExerciseSerializer < ActiveModel::Serializer
  attributes :category, :exercise_name, :reps, :equipment, :id
  has_many :workout_exercises
  # has_many :workouts, through: :workout_exercises
  
end
