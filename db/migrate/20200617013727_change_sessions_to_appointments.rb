class ChangeSessionsToAppointments < ActiveRecord::Migration[6.0]
  def change
    rename_table :sessions, :appointments
  end
end
