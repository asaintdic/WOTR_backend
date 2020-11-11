class WorkoutExerciseSerializer
  include FastJsonapi::ObjectSerializer
  attributes :created_at
  belongs_to :exercise
  belongs_to :workout
end
