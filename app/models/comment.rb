# frozen_string_literal: true

class Comment < ApplicationRecord
  belongs_to :user # , foreign_key: 'true', class_name: 'user'
  has_one :anonuser
  validates :content, presence: true
end
