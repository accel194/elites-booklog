require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the ReviewsHelper. For example:
#
# describe ReviewsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe ReviewsHelper, type: :helper do
  describe "review_average" do
    it "レビューがない場合は 0を返す" do
      expect(reviews_average([])).to eq 0
    end
    
    it "レビューがある場合は、その平均点を返す" do
      expect(reviews_average([create(:review, rank: 2), create(:review, rank: 4)])).to eq 3
    end
    
    it "レビューがある場合は、その平均点を返す（小数点あり）" do
      expect(reviews_average([create(:review, rank: 3), create(:review, rank: 4)])).to eq 3.5
    end
    it "レビューがある場合は、その平均点を返す（小数点第二まであり)" do
      expect(reviews_average([create(:review, rank: 3), create(:review, rank: 4), create(:review, rank: 1)])).to eq 2.67
    end
  end
end
