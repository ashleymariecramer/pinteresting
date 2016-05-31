class Pin < ActiveRecord::Base
     belongs_to :user
     has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
     validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
     # the follow option ignores validation
     # do_not_validate_attachment_file_type :image
     validates :image, presence: true
     validates :description, presence: true
end

