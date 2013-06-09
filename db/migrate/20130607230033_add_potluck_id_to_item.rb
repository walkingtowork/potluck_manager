class AddPotluckIdToItem < ActiveRecord::Migration
  def change
    add_column :items, :potluck_id, :integer
  end
end
