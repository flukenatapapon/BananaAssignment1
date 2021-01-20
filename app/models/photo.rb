class Photo < ApplicationRecord
    has_attached_file :image
    #This validates the type of file uploaded. According to this, only images are allowed.
    validates_attachment :image, presence: true,
    content_type: { content_type: ["image/jpeg", 'image/png' ] },
    size: { in: 0..10.kilobytes }
end
