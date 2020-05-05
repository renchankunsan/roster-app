class Category < ApplicationRecord
    has_many :rosters
    #バリデーション
    validates :name, presence: true
end