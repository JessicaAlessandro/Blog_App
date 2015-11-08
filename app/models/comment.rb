class Comment < ActiveRecord::Base
  belongs_to :entry
  validates :body , presence: true, length: {minimum: 6}

end
