# `Dice` is a virtual model in charge of returning a number based on a
# simmulated dice roll.
#
# For example, to roll a 2D8 dice (a two eight-sided dice):
# Dice.roll(number_of_dice: 2, number_of_sides: 8)
class Dice
  attr_reader :number_of_dice, :number_of_sides

  def initialize(number_of_dice, number_of_sides)
    @number_of_dice = number_of_dice
    @number_of_sides = number_of_sides
  end

  # By default, a `.roll` method will roll a one twenty-sided dice
  def self.roll (number_of_dice: 1, number_of_sides: 20)
    new(number_of_dice, number_of_sides).results
  end

  def results
    dice_results.sum
  end

  # Returns a new array of random values based on the `number_of_dice`
  def dice_results
    Array.new(number_of_dice) { rand(1..number_of_sides) }
  end
end
