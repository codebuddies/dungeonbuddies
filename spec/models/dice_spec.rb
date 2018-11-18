require 'rails_helper'

RSpec.describe Dice, type: :model do
  let (:dice) { Dice.new(1, 6) }

  describe '#new' do
    it 'should allow number_of_dice attribute to be readable' do
      expect(dice.number_of_dice).to eq(1)
    end

    it 'should allow number_of_sides to be readable' do
      expect(dice.number_of_sides).to eq(6)
    end
  end

  describe '#dice_results' do
    it 'should return an array' do
      results = dice.dice_results
      expect(results.class).to be Array
    end
  end
end
