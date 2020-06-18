class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :match_id
      t.string :dog_review
      t.integer :dog_rating
      t.integer :appointment_id

      t.timestamps
    end
  end
end
