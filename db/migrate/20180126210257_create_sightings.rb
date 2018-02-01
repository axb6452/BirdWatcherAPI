# frozen_string_literal: true

class CreateSightings < ActiveRecord::Migration[5.1]
  def change
    create_table :sightings do |t|
      t.text :bird, null: false
      t.text :characteristics, null: false
      t.text :body_color, null: false
      t.references :user, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
