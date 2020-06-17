class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.datetime :appointment_datetime
      t.string :description
      t.integer :match_id

      t.timestamps
    end
  end
end
