class Product < ActiveRecord::Base
  validates :name, :presence => true
  validates :cost, :presence => true
  validates :country_origin, :presence => true
  validates :description, :presence => true
  validates :views, :presence => true
  has_attached_file :picture, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/
end
