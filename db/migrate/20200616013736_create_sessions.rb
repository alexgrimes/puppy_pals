class CreateSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :sessions do |t|
      t.string :description
      t.integer :match_id

      t.timestamps
    end
  end
end
