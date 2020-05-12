class Roster < ApplicationRecord
    belongs_to :category
    belongs_to :user
    #画像投稿
    mount_uploader :image, ImageUploader
    #バリデーション
    validates :first_name,:last_name,:first_furigana,:last_furigana,:gender,:birthday,:email, presence: true
end
