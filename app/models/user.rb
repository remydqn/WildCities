class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :criteria

  before_validation :create_criteria

  private

  def create_criteria
    criteria = Criteria.create
    self.criteria = criteria
  end
end
