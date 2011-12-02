class Micropost < ActiveRecord::Base
  attr_accessible :content
  
  belongs_to :user
  
  validates :content, :presence => true, :length => { :maximum => 140 }
  validates :user_id, :presence => true
  
  # Where DESC is SQL for ÒdescendingÓ, i.e., in descending order from newest to oldest.
  default_scope :order => 'microposts.created_at DESC'
end