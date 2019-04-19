class CreatePatentDiseases < ActiveRecord::Migration[5.2]
  def change
    create_table :patent_diseases do |t|
      t.references :patent, foreign_key: true
      t.references :disease, foreign_key: true

      t.timestamps
    end
  end
end
