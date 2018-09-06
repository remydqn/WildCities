class Criteria < ApplicationRecord
  KIND = %w(hangout dance)

  has_one :user, dependent: :destroy
  validates :kind, inclusion: { in: KIND }, allow_nil: true
end
