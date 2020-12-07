class WorkoutExerciseSerializer < ActiveModel::Serializer
  attributes :created_at, :workout_id, :exercise_id
  belongs_to :exercise
  belongs_to :workout
end
