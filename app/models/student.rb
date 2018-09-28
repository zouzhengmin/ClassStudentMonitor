class Student < ApplicationRecord

  belongs_to :myclass
  validates :name, presence: true, uniqueness: true

end
