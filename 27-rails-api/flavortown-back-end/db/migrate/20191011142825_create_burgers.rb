class CreateBurgers < ActiveRecord::Migration[5.2]
  def change
    create_table :burgers do |t|
      t.string :protein
      t.string :temp
      t.boolean :cheese

      t.timestamps
    end
  end
end
