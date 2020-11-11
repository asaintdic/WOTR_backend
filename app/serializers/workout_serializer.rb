class WorkoutSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :note, :date
  belongs_to :user
  has_many :workout_exercises
end
