require_relative 'genie'

describe Genie do
  let(:genie) { Genie.new("Susan", 509234) }
  let(:wishes) {["aw", "awe", "awei", "aweio", "aweiou"]}

  it "grant_wish returns true if wish granted" do
    expect(genie.grant_wish("impeachment, soon please!")).to eq true
  end

  it "grant_wish returns false if 3 wishes already granted" do
    genie.grant_wish("good health, happiness, and friendship")
    genie.grant_wish("peace and justice. now.")
    genie.grant_wish("a good harvest")
    expect(genie.grant_wish("impeachment, soon please!")).to eq false
  end

  it "favorite_wish returns the wish with the most vowels" do
    favorites_hash = {}
    wishes.each do | wish |
      characters = wish.chars
      favorites_hash[wish]= characters.count do | letter |
        %w(a e i o u).include?(letter)
      end
    end
    expect(favorites_hash.key(favorites_hash.values.max)).to eq "aweiou"
  end

end