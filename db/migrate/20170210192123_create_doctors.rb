class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :hospital
      t.string :adhNo
      t.string :spec
      t.string :pass

      t.timestamps null: false
    end
  end
end
