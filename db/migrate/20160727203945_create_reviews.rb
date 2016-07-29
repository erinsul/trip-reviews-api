class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :budget, null: false
      t.references :profile, index: true, foreign_key: true
      t.references :place, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
