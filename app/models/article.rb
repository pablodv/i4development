class Article < ActiveRecord::Base

  validates :title, :uniqueness => true
  validates :title, :body, :presence => true

end
