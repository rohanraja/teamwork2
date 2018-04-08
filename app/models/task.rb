class Task < ApplicationRecord
  belongs_to :user, optional: true
  has_and_belongs_to_many :components
  has_and_belongs_to_many :checklists
end
