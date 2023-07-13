class Author < ApplicationRecord
  has_many :quotes
  has_many :works, dependent: :destroy
  validates :name, presence: true
end
