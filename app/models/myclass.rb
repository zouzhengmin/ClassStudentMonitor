class Myclass < ApplicationRecord

  validates :name, presence: true, uniqueness: true

end
