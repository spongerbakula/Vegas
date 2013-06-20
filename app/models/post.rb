class Post < ActiveRecord::Base
  attr_accessible :content, :title, :username

  
  validates :title, :presence => true,
  			:length => {:minimum => 1}
  validates :content, :length => {:minimum => 5}

  has_many :comments, :dependent => :destroy
  
 belongs_to :user
 validates :username, :presence => true
  
end
