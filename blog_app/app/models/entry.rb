class Entry < ActiveRecord::Base
	validates :title, presence: true
	validates :author, presence: true 
	validates :content, presence: true

	
	# relations: post belongs to only one user
	belongs_to :user
end
