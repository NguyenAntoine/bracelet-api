class CreateDiseases < ActiveRecord::Migration[5.2]
  def change
    create_table :diseases do |t|
      t.string :name
      t.boolean :chronical

      t.timestamps
    end
  end
end
