class Restaurant < ApplicationRecord
    extend FriendlyId
    friendly_id :name, use: :slugged
    mount_uploader :image, ImageUploader

    has_many :reviews

    # validates :name, :address, :phone, :website, :image, presence: true
     

    #  validates :website, format: { with: /\Ahttps?:\/\/.*\z/,
    #  message: "must start with http:// or https://" }
     
end
