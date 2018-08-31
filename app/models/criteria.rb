class Criteria < ApplicationRecord
  has_many :users, dependent: :destroy
end
