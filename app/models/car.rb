class Car < ApplicationRecord
  belongs_to :user
  has_many :extras
end
