class CreatePresses < ActiveRecord::Migration
  def change
    create_table :presses do |t|
      t.string :p_adhNo
      t.string :d_adhNo
      t.string :t_o_p
      t.integer :med_id
      t.integer :dosage
      t.string :day_span
      t.integer :n_o_t
      t.string :spl_rm
      t.string :success

      t.timestamps null: false
    end
  end
end
