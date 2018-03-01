class ExtraResource < JSONAPI::Resource
  # caching
  attributes :name, :private

  has_one :car

  def self.records(options = {})
    if options[:current_user].present?
      Extra.mine_and_public_list(options[:current_user])
    else
      Extra.public_list
    end
  end
end
