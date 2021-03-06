class Profile < ApplicationRecord
  belongs_to :user
  validates :name, :birth_date, :city, :state, :skills, presence: true

  has_attached_file :photo, styles: { medium: "230x230>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
end
