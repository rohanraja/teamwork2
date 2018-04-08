class Component < ApplicationRecord
  belongs_to :application
  has_many :functionalities, dependent: :destroy
  has_and_belongs_to_many :tasks
  accepts_nested_attributes_for :functionalities, 
                                allow_destroy: true
  has_and_belongs_to_many :testsuites
  accepts_nested_attributes_for :testsuites, 
                                allow_destroy: true
  accepts_nested_attributes_for :tasks, 
                                allow_destroy: true

  after_save :autocreate_testsuite, :autocreate_tasks

  def autocreate_testsuite
    if self.testsuites.empty?
      self.testsuites.create(:title => "Default testsuite for Component: #{self.name}")
    end
  end

  def autocreate_tasks
    if self.tasks.empty?
      self.tasks.create(:title => "Write testcases for component: #{self.name}")
      self.tasks.create(:title => "Implement failing testcases for component: #{self.name}")
      self.tasks.create(:title => "Implement and pass test cases for component: #{self.name}")
    end
  end
end
