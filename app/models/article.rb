class Article < ActiveRecord::Base

  has_attached_file :photo

  validates_attachment_presence :photo
  validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']

  validates :title, :uniqueness => true
  validates :title, :body, :presence => true

end
