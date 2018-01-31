  class CreateSightings < ActiveRecord::Migration[5.1]
  def change
    create_table :sightings do |t|
      t.string :bird, null: false
      t.string :characteristics, null: false
      t.string :body_color, null: false
      t.references :user, index: true, foreign_key: true, null: false

      t.timestamps
    end
  end
end
