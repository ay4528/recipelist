# frozen_string_literal: true

# CreateRecipes
class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :title
      t.text :material
      t.text :make
      t.text :point
      t.string :image_id

      t.timestamps
    end
  end
end
