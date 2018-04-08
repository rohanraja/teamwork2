class Testsuite < ApplicationRecord
  has_and_belongs_to_many :components
  has_and_belongs_to_many :testcases
end
