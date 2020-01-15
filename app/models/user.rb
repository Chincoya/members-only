# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password
  validates :name, presence: true, length: { minimum: 3, maximum: 20 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i.freeze
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: true

  has_many :comments
end
