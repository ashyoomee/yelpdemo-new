class Restaurant < ApplicationRecord
    extend FriendlyId
    friendly_id :name, use: :slugged
    mount_uploader :image, ImageUploader

    has_many :reviews
end
