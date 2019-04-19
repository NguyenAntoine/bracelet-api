class CreateTreatments < ActiveRecord::Migration[5.2]
  def change
    create_table :treatments do |t|
      t.references :patent, foreign_key: true
      t.datetime :start_date
      t.datetime :end_date
      t.timestamps
    end
  end
end
