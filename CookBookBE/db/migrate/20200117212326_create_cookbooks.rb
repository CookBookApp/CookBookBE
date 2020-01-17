class CreateCookbooks < ActiveRecord::Migration[6.0]
  def change
    create_table :cookbooks do |t|
      t.references :user, null: false, foreign_key: true
      t.string :image
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
