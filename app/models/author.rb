class Author < ApplicationRecord
  has_many :quotes
  validates :name, presence: true
  has_many :works, dependent: :destroy
end
