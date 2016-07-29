class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.boolean :visited, null: false
      t.references :profile, index: true, foreign_key: true
      t.references :place, index: true, foreign_key: true
      t.references :tag, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
