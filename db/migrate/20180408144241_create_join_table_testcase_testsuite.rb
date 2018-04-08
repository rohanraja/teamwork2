class CreateJoinTableTestcaseTestsuite < ActiveRecord::Migration[5.1]
  def change
    create_join_table :testcases, :testsuites do |t|
      # t.index [:testcase_id, :testsuite_id]
      # t.index [:testsuite_id, :testcase_id]
    end
  end
end
