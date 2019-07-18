class Post < ApplicationRecord
    has_many:comments
    belongs_to:user
 
    mount_uploader:image, PostImageUploader
    
    def self.search(search)
       search=Post.where("title LIKE ? or content LIKE ?", "%#{search}%","%#{search}%") 
    end
end
