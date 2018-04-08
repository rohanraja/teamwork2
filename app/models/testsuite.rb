class Testsuite < ApplicationRecord
  has_and_belongs_to_many :components
  has_and_belongs_to_many :testcases
  accepts_nested_attributes_for :testcases, 
                                allow_destroy: true
end
