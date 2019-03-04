class CreateFishLocations < ActiveRecord::Migration[5.2]
  def change
    create_table(:fish_locations) do |t|
      t.integer :fish_id
      t.integer :location_id
      t.integer :fish_count
    end
  end
end
