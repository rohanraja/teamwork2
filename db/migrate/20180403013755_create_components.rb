class CreateComponents < ActiveRecord::Migration[5.1]
  def change
    create_table :components do |t|
      t.string :name
      t.string :category
      t.string :status, default: :New
      t.text :description
      t.references :application, foreign_key: true

      t.timestamps
    end
  end
end
