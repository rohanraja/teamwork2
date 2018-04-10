class Task < ApplicationRecord
  belongs_to :user, optional: true
  has_and_belongs_to_many :components
  has_and_belongs_to_many :checklists

  after_save :autocreate_checklist

  has_many :task_memberships
  has_many :subtasks, :through => :task_memberships

  accepts_nested_attributes_for :subtasks, 
                                allow_destroy: true

  def autocreate_checklist
    if self.checklists.empty?
      self.checklists.create(:title => "Default checklist for Task having title: #{self.title}")
    end
  end
end
