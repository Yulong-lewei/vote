class AddTotalnumberToVote < ActiveRecord::Migration
  def change
    add_column :votes, :totalnumber, :integer,:default => 0
  end
end
