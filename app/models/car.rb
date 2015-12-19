class Car < ActiveRecord::Base
  belongs_to :brand
  belongs_to :type
  has_attached_file :photo, styles: { large:"800x300!",medium: "300x150>", thumb: "100x100>" }
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/
end
