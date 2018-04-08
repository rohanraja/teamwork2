class Component < ApplicationRecord
  belongs_to :application
  has_many :functionalities, dependent: :destroy
  accepts_nested_attributes_for :functionalities, 
                                allow_destroy: true
end
