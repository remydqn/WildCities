class Criteria < ApplicationRecord
  KIND = %w(drink dance)

  has_one :users, dependent: :destroy
  validates :kind, inclusion: { in: KIND }, allow_nil: true
end
