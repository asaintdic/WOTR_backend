class WorkoutSerializer < ActiveModel::Serializer
  attributes :title, :note, :id
  has_many :workout_exercises
  has_many :exercises, through: :workout_exercises
  
end
