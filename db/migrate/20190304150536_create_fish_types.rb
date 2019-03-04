class CreateFishTypes < ActiveRecord::Migration[5.2]
  def change
    create_table(:fish_types) do |t|
      t.string :name
      t.integer :min_points
      t.integer :max_points
    end
  end
end
