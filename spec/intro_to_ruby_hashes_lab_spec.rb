require_relative 'spec_helper'
require_relative  '../intro_to_ruby_hashes_lab.rb'



describe "Building a Nested Monopoly Hash" do
  describe "Adding Key/Value Pairs in the Top Level" do
    describe "monopoly" do
      it "adds a key/value pair to the monopoly hash. The key should be :railroads and the value should be an empty hash" do
        expect(monopoly[:railroads]).to eq({})
        expect(monopoly.keys.count).to eq(1)
        expect(monopoly.values).to match_array([{}])
      end
    end
  end

  describe "Adding Key/Value Pairs in the Second Level" do
    describe "monopoly_with_second_tier" do
      it "sets the first key of the :railroads hash to a symbol, :pieces, whose value is an integer, 4" do
        # the goal of this part of the lab is to have you build the multidimentional monopoly hash in sequential order
        # hence the solution to this (and the rest of the tests in this lab) builds on top of each other.

        expect(monopoly_with_second_tier.values[0].values[0]).to eq(4)
        expect(monopoly_with_second_tier.values[0].keys[0]).to eq(:pieces)
      end

      it "sets the second key of the :railroads hash to a symbol, :names, whose value is an empty hash" do

        expect(monopoly_with_second_tier[:railroads][:names]).to eq({})
      end

      it "sets the third key of the :railroads hash to a symbol, :rent_in_dollars, whose value is an empty hash " do

        expect(monopoly_with_second_tier[:railroads][:rent_in_dollars]).to eq({})
        expect(monopoly_with_second_tier.values[0].keys).to eq([:pieces, :names, :rent_in_dollars])
      end
    end
  end

  describe "Adding Key/Value Pairs in the Third Level" do
    describe "monopoly_with_third_tier" do
      it "sets the 1st key of the :rent_in_dollars hash to a symbol, :one_piece_owned, whose value is an integer, 25" do
        expect(monopoly_with_third_tier.values[0].values.count).to eq(3)
        expect(monopoly_with_third_tier.values[0][:rent_in_dollars].values[0]).to eq(25)
        expect(monopoly_with_third_tier.values[0][:rent_in_dollars].keys[0]).to eq(:one_piece_owned)
      end

      it "sets the 2nd key of the :rent_in_dollars hash to a symbol, :two_pieces_owned, whose value is an integer, 50" do

        expect(monopoly_with_third_tier.keys.count).to eq(1)
        expect(monopoly_with_third_tier.values[0].keys.count).to eq(3)
        expect(monopoly_with_third_tier.values[0][:rent_in_dollars][:two_pieces_owned]).to eq(50)
      end

      it "sets the 3rd key of the :rent_in_dollars hash to a symbol, :three_pieces_owned, whose value is an integer, 100" do

        expect(monopoly_with_third_tier.values[0].values.count).to eq(3)
        expect(monopoly_with_third_tier.values[0][:rent_in_dollars].keys[0]).to eq(:one_piece_owned)
        expect(monopoly_with_third_tier.values[0][:rent_in_dollars][:three_pieces_owned]).to eq(100)
      end

      it "sets the 4th key of the :rent_in_dollars hash to a symbol, :four_pieces_owned, whose value is an integer, 200" do

        expect(monopoly_with_third_tier.values[0].values.count).to eq(3)
        expect(monopoly_with_third_tier.values[0][:rent_in_dollars].keys.count).to eq(4)
        expect(monopoly_with_third_tier.values[0][:rent_in_dollars][:four_pieces_owned]).to eq(200)
      end

      it "sets the 1st key of the :names hash to a symbol, :reading_railroad, whose value is an empty hash" do

        expect(monopoly_with_third_tier.keys.count).to eq(1)
        expect(monopoly_with_third_tier.values[0].values.count).to eq(3)
        expect(monopoly_with_third_tier.values[0][:names].keys[0]).to eq(:reading_railroad)
        expect(monopoly_with_third_tier.values[0][:names].values[0]).to eq({})
      end

      it "sets the 2nd key of the :names hash to a symbol, :pennsylvania_railroad, whose value is an empty hash" do

        expect(monopoly_with_third_tier.keys.count).to eq(1)
        expect(monopoly_with_third_tier.values[0].values.count).to eq(3)
        expect(monopoly_with_third_tier.values[0][:names].keys[1]).to eq(:pennsylvania_railroad)
        expect(monopoly_with_third_tier.values[0][:names].values[1]).to eq({})
      end

      it "sets the 3rd key of the :names hash to a symbol, :b_and_o_railroad, whose value is an empty hash" do

        expect(monopoly_with_third_tier.keys.count).to eq(1)
        expect(monopoly_with_third_tier.values[0].values.count).to eq(3)
        expect(monopoly_with_third_tier.values[0][:names].keys[2]).to eq(:b_and_o_railroad)
        expect(monopoly_with_third_tier.values[0][:names].values[2]).to eq({})
      end

      it "sets the 4th key of the :names hash to a symbol, :shortline, whose value is an empty hash" do

        expect(monopoly_with_third_tier.keys.count).to eq(1)
        expect(monopoly_with_third_tier.values[0].values.count).to eq(3)
        expect(monopoly_with_third_tier.values[0][:names].keys[3]).to eq(:shortline)
        expect(monopoly_with_third_tier.values[0][:names].values[3]).to eq({})
      end
    end
  end

  describe "Adding Key/Value Pairs in the Fourth Level" do
    describe "monopoly_with_fourth_tier" do
      it "sets the 1st key of the :reading_railroad hash to a string, 'mortgage_value', whose value is also a string, '$100'" do

        expect(monopoly_with_fourth_tier.values[0][:names].has_key?(:reading_railroad)).to be true
        expect(monopoly_with_fourth_tier.values[0][:names].values[0].has_key?("mortgage_value")).to be true
        expect(monopoly_with_fourth_tier.values[0][:names].values[0].values[0]).to eq("$100")
      end

      it "sets the 1st key of the :pennsylvania_railroad hash to a string, 'mortgage_value', whose value is also a string, '$200'" do

        expect(monopoly_with_fourth_tier.values[0][:names].has_key?(:pennsylvania_railroad)).to be true
        expect(monopoly_with_fourth_tier.values[0][:names].values[1].has_key?("mortgage_value")).to be true
        expect(monopoly_with_fourth_tier.values[0][:names].values[1].values[0]).to eq("$200")
      end

      it "sets the 1st key of the :b_and_o_railroad hash to a string, 'mortgage_value', whose value is also a string, '$400'" do

        expect(monopoly_with_fourth_tier.values[0][:names].has_key?(:b_and_o_railroad)).to be true
        expect(monopoly_with_fourth_tier.values[0][:names].values[2].has_key?("mortgage_value")).to be true
        expect(monopoly_with_fourth_tier.values[0][:names].values[2].values[0]).to eq("$400")
      end

      it "sets the 1st key of the :shortline hash to a string, `mortgage_value`, whose value is also a string, '$800'" do

        expect(monopoly_with_fourth_tier.values[0][:names].keys[3]).to eq(:shortline)
        expect(monopoly_with_fourth_tier.values[0][:names].values[3].has_key?("mortgage_value")).to be true
        expect(monopoly_with_fourth_tier.values[0][:names].values[3].values[0]).to eq("$800")
      end
    end
  end
end
