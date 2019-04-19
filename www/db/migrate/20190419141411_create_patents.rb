class CreatePatents < ActiveRecord::Migration[5.2]
  def change
    create_table :patents do |t|
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end
