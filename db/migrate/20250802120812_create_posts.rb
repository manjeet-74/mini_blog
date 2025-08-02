class CreatePosts < ActiveRecord::Migration[8.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.integer :status
      t.references :user, null: false, foreign_key: true
      t.string :slug

      t.timestamps
    end
    add_index :posts, :slug, unique: true
  end
end
