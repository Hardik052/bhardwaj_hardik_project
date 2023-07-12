class Quote < ApplicationRecord
  belongs_to :author
  belongs_to :genre
  validates :content, presence: true
  validates :author_id, presence: true
end
