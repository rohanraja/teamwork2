class CreateFunctionalities < ActiveRecord::Migration[5.1]
  def change
    create_table :functionalities do |t|
      t.string :title
      t.references :component, foreign_key: true

      t.timestamps
    end
  end
end
