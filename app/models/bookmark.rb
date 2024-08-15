class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :comment, length: { minimum: 6,
                                too_short: "Comment cannot be shorter than 6 characters" }
  validates :list_id, uniqueness: { scope: :movie_id }
  validates :movie_id, uniqueness: { scope: :list_id }
end
