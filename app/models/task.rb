class Task < ApplicationRecord
  belongs_to :user, optional: true
  has_and_belongs_to_many :components
  has_and_belongs_to_many :checklists

  after_save :autocreate_checklist

  def autocreate_checklist
    if self.checklists.empty?
      self.checklists.create(:title => "Default checklist for Task having title: #{self.title}")
    end
  end
end
