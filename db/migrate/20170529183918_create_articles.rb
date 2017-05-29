class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :title, null: false
      t.string :description
      t.string :email, null: false
      t.decimal :price
      t.references :category, foreign_key: true
      t.string :key

      t.timestamps
    end
  end
end
