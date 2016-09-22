class User < ApplicationRecord
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" } #, default_url: "/images/:style/missing.png"
  validates_attachment :image, content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }, size: { in: 0..3000.kilobytes }, presence: true
end
