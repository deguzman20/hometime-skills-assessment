class CreateGuestPhoneNumbers < ActiveRecord::Migration[6.0]
  def change
    create_table :guest_phone_numbers do |t|
      t.string :number
      t.integer :guest_id

      t.timestamps
    end
  end
end
