class Post < ActiveRecord::Base

  validates_presence_of :title, :content

  has_many :comments
  belongs_to :category

end
