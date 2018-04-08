class Testcase < ApplicationRecord
  has_and_belongs_to_many :testsuites
end
