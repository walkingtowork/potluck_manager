class AddDateLocationToPotluck < ActiveRecord::Migration
  def change
    add_column :potlucks, :date, :date
    add_column :potlucks, :location, :string
  end
end
