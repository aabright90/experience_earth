class CreateExperiences < ActiveRecord::Migration[5.2]
  def change
    create_table :experiences do |t|
      t.string :location
      t.string :description
      t.string :contact
      t.string :title
      t.string :price
      t.string :experience_dates

      t.timestamps
    end
  end
end
