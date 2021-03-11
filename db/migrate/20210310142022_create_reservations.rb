class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.string :start_date
      t.string :end_date
      t.string :expected_payout_amount
      t.string :listing_security_price_accurate
      t.string :host_currency
      t.integer :nights
      t.string :status_type
      t.string :total_paid_amount_accurate
      t.integer :guest_detail_id
      t.integer :guest_id
      t.timestamps
    end
  end
end
