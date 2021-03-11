class CreateGuestDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :guest_details do |t|
      t.string :localized_description
      t.integer :number_of_adults
      t.integer :number_of_children
      t.integer :number_of_infants

      t.timestamps
    end
  end
end
