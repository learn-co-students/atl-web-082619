class CreatePokemonTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :pokemon_types do |t|
      t.string :name
      t.integer :trainer_id
      t.string :type

      t.timestamps
    end
  end
end
