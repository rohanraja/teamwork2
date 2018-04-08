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

clist = task.checklists.create(title: "Sample checklist")

clistitem = clist.checklistitems.create(:title => "Should be tested like hell")

ts = app.components.first.testsuites.create(title: "Test Suite 1")

tc = ts.testcases.create(title: "New test case")

app2 = Application.create(name: "xLearn2-Ui")
comps2 = app2.components.create([
  {name: "NavBar", description: "Has links to most common pages", category: "class"} 
])
