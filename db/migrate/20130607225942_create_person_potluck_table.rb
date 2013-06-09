class CreatePersonPotluckTable < ActiveRecord::Migration
  def change
    create_table :people_potlucks, :id => false do |t|
      t.integer :person_id
      t.integer :potluck_id
    end
  end
end
