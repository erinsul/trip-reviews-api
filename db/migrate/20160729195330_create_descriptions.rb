class CreateDescriptions < ActiveRecord::Migration
  def change
    create_table :descriptions do |t|
      t.references :trip, index: true, foreign_key: true
      t.references :tag, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
