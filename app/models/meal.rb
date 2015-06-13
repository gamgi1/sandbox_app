class Meal < ActiveRecord::Base

  has_many :ingredients
  belongs_to :person

  validates :name, presence: true, uniqueness: true

end
