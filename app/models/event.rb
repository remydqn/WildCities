class Event < ApplicationRecord

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_many :users
  has_many :choices
  mount_uploader :picture, PhotoUploader
  has_many :votes

  def average_note
    if votes.present?
      (votes.sum(:note) / votes.count).round
    end
  end
end
