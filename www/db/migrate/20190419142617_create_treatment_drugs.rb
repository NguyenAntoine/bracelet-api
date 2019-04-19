class CreateTreatmentDrugs < ActiveRecord::Migration[5.2]
  def change
    create_table :treatment_drugs do |t|
      t.references :treatment, foreign_key: true
      t.references :drug, foreign_key: true

      t.integer :schedule
      t.integer :meal

      t.integer :drugs_numbers
      t.integer :day

      t.timestamps
    end
  end
end
