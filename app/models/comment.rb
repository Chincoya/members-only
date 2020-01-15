class Comment < ApplicationRecord
  belongs_to :user
  has_one :anonuser
  validates :content, presence: true
end
