class Bookmark < ApplicationRecord
  validates :comment, length: { minimum: 6 }
  # validates :movie_id, uniqueness: { scope: :list_id }
  validates :movie, uniqueness: { scope: :list }

  belongs_to :movie
  belongs_to :list
end
