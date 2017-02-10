class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :adhNo
      t.string :dob
      t.string :gender
      t.string :pass

      t.timestamps null: false
    end
  end
end
