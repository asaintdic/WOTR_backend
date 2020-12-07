class Exercise < ApplicationRecord
   has_many :workout_exercises, dependent: :destroy
   has_many :workouts, through: :workout_exercises 
  


#    def create_join
#      @exercise.id == parexercise_id
    
     
end
