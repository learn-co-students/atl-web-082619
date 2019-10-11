class CreateBurgers < ActiveRecord::Migration[5.2]
  def change
    create_table :burgers do |t|
      t.string :temp
      t.string :protein
      t.boolean :cheese

      t.timestamps
    end
  end
end
