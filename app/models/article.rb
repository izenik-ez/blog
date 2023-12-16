class Article < ApplicationRecord
  include Visible
  
  has_many :comments, dependent: :destroy
  
  # Validation are rules that are checked before a model object is saved.
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
