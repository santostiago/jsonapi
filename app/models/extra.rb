class Extra < ApplicationRecord
  belongs_to :car

  scope :public_list, -> { where(private: false) }
  scope :mine_and_public_list, ->(user_id) {
    joins(:cars).where("private = false or cars.user_id = #{user_id}")
  }
end
