class Work < ApplicationRecord
    belongs_to :work_cat
    has_one :cart_work, dependent: :destroy
    has_one :cart, through: :cart_works
    mount_uploader :image, ImageUploader
end
