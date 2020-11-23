class ExerciseSerializer < ActiveModel::Serializer
  attributes :category, :exercise_name, :reps, :equipment, :id
  has_many :workout_exercises
end
