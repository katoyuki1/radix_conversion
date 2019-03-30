class CreateBinaries < ActiveRecord::Migration[5.1]
  def change
    create_table :binaries do |t|
      t.string :answer
      t.string :correct_answer

      t.timestamps
    end
  end
end
