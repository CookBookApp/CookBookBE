class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :description
      t.string :image
      t.string :prep_time
      t.string :cook_time
      t.string :total_time
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
