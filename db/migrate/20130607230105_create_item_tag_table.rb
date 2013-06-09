class CreateItemTagTable < ActiveRecord::Migration
  def change
    create_table :item_tag, :id => false do |t|
      t.integer :item_id
      t.integer :tag_id
    end
  end
end