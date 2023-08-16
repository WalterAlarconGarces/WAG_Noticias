class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, as: :commentable, dependent: :destroy
  include PgSearch::Model
  pg_search_scope :search_full_text,
                  against: {
                    title: 'A',
                    body: 'B'
                  }
end
