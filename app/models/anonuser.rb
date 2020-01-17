# frozen_string_literal: true

class Anonuser < ApplicationRecord
  has_many :comments
  validates :name, presence: true, length: { minimum: 3, maximum: 50 }
end
