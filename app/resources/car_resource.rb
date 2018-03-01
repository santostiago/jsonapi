class CarResource < JSONAPI::Resource
  #caching
  attributes :name

  has_one :user
  has_many :extras
end
