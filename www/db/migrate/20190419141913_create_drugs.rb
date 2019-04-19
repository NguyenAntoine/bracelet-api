class CreateDrugs < ActiveRecord::Migration[5.2]
  def change
    create_table :drugs do |t|
      t.string :name
      t.integer :no_drug
      t.integer :type
      t.integer :injection_type

      t.timestamps
    end
  end
end
