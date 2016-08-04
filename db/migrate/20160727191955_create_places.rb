class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name, null: false, unique: true
      t.string :country, null: false

      t.timestamps null: false
    end
  end
end
