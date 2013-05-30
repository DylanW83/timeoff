class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :days_available
      t.date :start_date
      t.date :end_date
      t.integer :days_charged
      t.integer :days_remaining

      t.timestamps
    end
  end
end
