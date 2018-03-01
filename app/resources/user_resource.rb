class UserResource < JSONAPI::Resource
  #caching
  attributes :name

  has_many :cars
end
