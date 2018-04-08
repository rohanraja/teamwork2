class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.references :user, foreign_key: true
      t.integer :priority
      t.string :status
      t.string :category

      t.timestamps
    end
  end
end
