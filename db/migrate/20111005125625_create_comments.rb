class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.text :body
      t.references :vote
      t.references :user

      t.timestamps
    end
    add_index :comments, :vote_id
    add_index :comments, :user_id
  end
end
