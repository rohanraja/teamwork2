class Checklist < ApplicationRecord
  has_and_belongs_to_many :tasks
  has_many :checklistitems, dependent: :destroy
end
