class Entry < ActiveRecord::Base
	has_many :comments, dependent: :destroy
		# dependent: :destroy means if the post gets deleted the comment gets deleted from database as well.
	validates :title, presence: true
	validates :author, presence: true 
	validates :content, presence: true

	
	# relations: post belongs to only one user
	belongs_to :user
end
