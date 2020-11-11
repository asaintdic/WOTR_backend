class RemoveUrlFromExercises < ActiveRecord::Migration[6.0]
  def change
    remove_column :exercises, :url, :string
  end
end
