class AddApplicationIdToComponents < ActiveRecord::Migration[5.1]
  def change
    add_column :components, :application_id, :integer
  end
end
