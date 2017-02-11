class AddDoneToPress < ActiveRecord::Migration
  def change
    add_column :presses, :done, :string
  end
end
