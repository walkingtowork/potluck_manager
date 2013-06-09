class AddPersonIdToItem < ActiveRecord::Migration
  def change
    add_column :items, :person_id, :integer
  end
end
