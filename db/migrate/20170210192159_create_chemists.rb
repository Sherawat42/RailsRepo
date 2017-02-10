class CreateChemists < ActiveRecord::Migration
  def change
    create_table :chemists do |t|
      t.string :name
      t.string :adhNo
      t.string :add
      t.string :pass

      t.timestamps null: false
    end
  end
end
