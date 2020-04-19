class Roster < ApplicationRecord
    mount_uploader :image, ImageUploader
    
    validates :first_name,:last_name,:first_furigana,:last_furigana,:gender,:birthday,:email, presence: true
end
