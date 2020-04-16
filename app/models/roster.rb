class Roster < ApplicationRecord
    belongs_to :category
    validates :first_name,:last_name,:first_furigana,:last_furigana,:gender,:birthday,:email, presence: true
end
