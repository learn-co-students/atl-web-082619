class CreateGyms < ActiveRecord::Migration[6.0]
  def change
    create_table :gyms do |t|
      t.string :leader
      t.string :badge
      t.boolean :beaten

      t.timestamps
    end
  end
end
