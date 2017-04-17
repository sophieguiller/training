require "restaurant"

describe Restaurant do

  let(:jules_verne) { Restaurant.new("paris", "Jules Verne") }
  let(:tour_d_argent) { Restaurant.new("paris", "Tour d'argent") }
  let(:bocuse) { Restaurant.new("lyon", "Paul Bocuse") }
  let(:restos) { [jules_verne, tour_d_argent, bocuse] }

  describe "#average_rating" do
    it "should implement #average_rating reader" do
      expect(jules_verne).to respond_to :average_rating
    end
  end

  describe "#rate" do
    it "should update average restaurant rating" do
      bocuse.rate(10)
      bocuse.rate(20)
      expect(bocuse.average_rating).to eq 15.0
    end
  end

  describe "#filter_by_city" do
    it "should respond to filter_by_city method" do
      expect(Restaurant).to respond_to :filter_by_city
    end
    it "should filter by city existing restaurants" do
      expect(Restaurant.filter_by_city(restos,"lyon")).to eq [bocuse]
    end
  end

end
