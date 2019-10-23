class Comment < ApplicationRecord
  validates :message, presence: true
  validates :improvements, presence: :true
end
