class WorkoutSerializer < ActiveModel::Serializer
  attributes :title, :note, :id
  has_many :workout_exercises, dependent: :destroy
  has_many :exercises, through: :workout_exercises
  
end
