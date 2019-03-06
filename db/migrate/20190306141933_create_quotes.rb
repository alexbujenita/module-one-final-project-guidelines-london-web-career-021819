class CreateQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table(:quotes) do |t|
      t.text :sentence
    end
  end
end
