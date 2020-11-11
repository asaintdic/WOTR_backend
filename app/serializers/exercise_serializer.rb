class ExerciseSerializer
  include FastJsonapi::ObjectSerializer
  attributes :category, :exercise_name, :reps, :equipment
  has_many :workout_exercises
end
