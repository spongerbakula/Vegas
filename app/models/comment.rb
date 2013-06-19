class Comment < ActiveRecord::Base
  
  attr_accessible :body, :post
  belongs_to :post


  validates :body, :length => {:minimum => 1}

  belongs_to :user
end
