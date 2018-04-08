class CreateJoinTableComponentTestsuite < ActiveRecord::Migration[5.1]
  def change
    create_join_table :components, :testsuites do |t|
      # t.index [:component_id, :testsuite_id]
      # t.index [:testsuite_id, :component_id]
    end
  end
end
