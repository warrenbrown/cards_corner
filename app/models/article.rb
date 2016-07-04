class Article < ActiveRecord::Base
  has_attached_file :image, styles: { medium: "300x300>", thumb: "64x64>", big: '900x300>' }, default_url: "/images/:style/missing.png"

  has_many :comments, dependent: :destroy

  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  validates :title, presence: true
end
