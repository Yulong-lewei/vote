class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.string :name
      t.integer :vote_id

      t.timestamps
    end
  end
end
