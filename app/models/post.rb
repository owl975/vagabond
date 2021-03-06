class Post < ActiveRecord::Base
	belongs_to :user
	belongs_to :city
	has_many :comments
	acts_as_taggable
	
	validates :title, :presence => true, 
 			length: {maximum: 200}

 	validates :body, :presence => true

end
