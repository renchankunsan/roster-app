require 'rails_helper'

RSpec.describe Roster, type: :model do
    it "姓、名を登録すると、姓名が取得できること" do
        roster = Roster.new(last_name:"南雲", first_name:"蓮")
        expect(roster.last_name + " " + roster.first_name).to eq "南雲 蓮"
    end
end