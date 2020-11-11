class CreateExercises < ActiveRecord::Migration[6.0]
  def change
    create_table :exercises do |t|
      t.string :category
      t.string :exercise_name
      t.integer :reps
      t.string :equipment
      t.string :url

      t.timestamps
    end
  end
end
