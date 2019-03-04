class CreateFishSpecies < ActiveRecord::Migration[5.2]
  def change
    create_table(:fish_species) do |t|
      t.string :name
      t.integer :min_points
      t.integer :max_points
    end
  end
end
