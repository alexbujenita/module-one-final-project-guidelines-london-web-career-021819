class CreateGameCatches < ActiveRecord::Migration[5.2]
  def change
    create_table(:game_catches) do |t|
      t.integer :user_id
      t.integer :fish_type_id
      t.integer :game_id
      t.integer :score
    end
  end
end
