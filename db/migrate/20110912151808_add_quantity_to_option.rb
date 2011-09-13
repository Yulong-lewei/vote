class AddQuantityToOption < ActiveRecord::Migration
  def change
    add_column :options, :quantity, :integer,:default => 1	
  end
end
