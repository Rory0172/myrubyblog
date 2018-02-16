class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.integer :category_id
      t.integer :administrator_id
      t.boolean :published, null: false, default: true

      t.timestamps
    end
  end
end
