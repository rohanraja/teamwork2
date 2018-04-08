class Component < ApplicationRecord
  belongs_to :application
  has_many :functionalities, dependent: :destroy
  has_and_belongs_to_many :tasks
  accepts_nested_attributes_for :functionalities, 
                                allow_destroy: true
  has_and_belongs_to_many :testsuites
  accepts_nested_attributes_for :testsuites, 
                                allow_destroy: true
end
