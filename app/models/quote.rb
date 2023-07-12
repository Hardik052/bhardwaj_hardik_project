class Quote < ApplicationRecord
  belongs_to :author
  validates :content, presence: true
  validates :author_id, presence: true
end
