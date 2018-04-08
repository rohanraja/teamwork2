class CreateTestcases < ActiveRecord::Migration[5.1]
  def change
    create_table :testcases do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
