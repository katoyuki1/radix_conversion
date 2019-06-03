class AddDetailsToOctals < ActiveRecord::Migration[5.1]
  def change
    add_column :octals, :answer, :string
    add_column :octals, :correct_answer, :string
  end
end
