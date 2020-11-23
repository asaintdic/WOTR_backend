class WorkoutExerciseSerializer < ActiveModel::Serializer
  attributes :created_at
  belongs_to :exercise
  belongs_to :workout
end
