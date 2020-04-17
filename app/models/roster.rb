class Roster < ApplicationRecord
    validates :first_name,:last_name,:first_furigana,:last_furigana,:gender,:birthday,:email, presence: true
    validates :age, numericality: true
end
