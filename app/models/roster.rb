class Roster < ApplicationRecord
    belongs_to :category
    #画像投稿
    mount_uploader :image, ImageUploader
    #バリデーション
    validates :first_name,:last_name,:first_furigana,:last_furigana,:gender,:birthday,:email,:category_id, presence: true
end
