class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :criteria
  has_many :choices

  before_validation :create_criteria

  # def geocoder
  #   @results = Geocoder.search([48.856614, 2.3522219])
  #   @results.first.address
  # end


  private

  def create_criteria
    criteria = Criteria.create
    self.criteria = criteria
  end
end
