# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# FactoryGirl.create(:application, :with_components, comps: ["Comp_1", "Comp_2"], name: "xLearn2")

email = 'rohanraja9@gmail.com'
password = 'secretpass'
user1 = User.new(:email => email, :password => password, :password_confirmation => password)
user1.save!

email2 = 'roraja@microsoft.com'
password = 'secretpass'
User.new(:email => email2, :password => password, :password_confirmation => password).save!

require 'csv'

def importUSDTasks
  usdapp = Application.create(name: "USD Browser Redesign")

  filename = "#{Rails.root}/db/seed/browsertasks.csv"
  CSV.foreach(filename, :headers => true) do |row|
    taskTitle = row["Description"]
    componentName = row["Component"]
    totalCost = row["Total Days"]
    testDesCost = row["TestCase Design"]
    testImplCost = row["TestAuto Impl"]
    implCost = row["Coding"]
    prio = row["Priority"][1].to_i

    comp = usdapp.components.create(:name => componentName, description: taskTitle, category: "Module")
    tsk = comp.tasks.create(:title => "Design, test and implement component: #{componentName}" , :estimated_cost => totalCost, :priority => prio)

    tsk.subtasks.create(:title => "Design test cases", :estimated_cost => testDesCost, :description =>  "Test cases designing for #{componentName}", :priority => prio)
    tsk.subtasks.create(:title => "Implement automated unit tests", :estimated_cost => testImplCost, :description =>  "Test automation implementation for #{componentName}", :priority => prio)
    tsk.subtasks.create(:title => "Implement component and pass test cases", :estimated_cost => implCost, :description => "Component implementation for #{componentName}", :priority => prio)

  end
end


def importUSDBrowserApp
  importUSDTasks
end

importUSDBrowserApp


def xlearnData

  app = Application.create(name: "xLearn2-Backend")
  comps = app.components.create([
    {name: "Job Manager", description: "Responsible for managing jobs", category: "class"}, 
    {name: "Model Trainer", description: "Trains deep learning model", category: "module" }, 
    {name: "Weights Manager"},
    {name: "Components Loader"},
    {name: "PyComponents Manager"}
  ])

  app.components.first.functionalities.create(title: "It should manage jobs")

  task = app.components.first.tasks.create(title: "Write acceptance test cases", user_id: user1.id)

  task.subtasks.create(:title => "Sample Sub Task 1")

  clist = task.checklists.create(title: "Sample checklist")

  clistitem = clist.checklistitems.create(:title => "Should be tested like hell")

  ts = app.components.first.testsuites.create(title: "Test Suite 1")

  tc = ts.testcases.create(title: "New test case")

  app2 = Application.create(name: "xLearn2-Ui")
  comps2 = app2.components.create([
    {name: "NavBar", description: "Has links to most common pages", category: "class"} 
  ])

end

