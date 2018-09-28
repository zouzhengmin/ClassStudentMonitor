class Student < ApplicationRecord

  belongs_to :myclass
  validates :name, presence: true, uniqueness: true

  MONITOR = {"yes" => "班长", "no" => "成员"}.freeze
end
