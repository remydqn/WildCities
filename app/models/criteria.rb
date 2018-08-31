class Criteria < ApplicationRecord
  KIND = %w(drink dance culture)

  has_one :users, dependent: :destroy
  validates :kind, inclusion: { in: KIND }, allow_nil: true
end
