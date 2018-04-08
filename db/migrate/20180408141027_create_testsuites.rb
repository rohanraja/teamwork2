class CreateTestsuites < ActiveRecord::Migration[5.1]
  def change
    create_table :testsuites do |t|
      t.string :title

      t.timestamps
    end
  end
end
