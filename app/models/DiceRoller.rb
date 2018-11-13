# This is function takes three inputs and rolls a y sided dice x times storing values in the array.
# Using simple dice notation  xdy == rollingDiceFunc(x, y, roll)
# Created by CuDragon please pm me in codebuddies slack with questions.

class Dice
    @rolls = Array.new

    def roll(numberOfDice, diceSize)
        value = @rolls
        if numberOfDice == 1
            value.push(rand(1..diceSize))
            #puts "#{value}"  # Testing uncomment to see array Values
            rolledAmount = value.sum()
            value.clear
            return rolledAmount
        else
            value.push(rand(1..diceSize))
            #puts "#{value}" # Testing uncomment to see array Values
        return rollingDiceFunc(numberOfDice - 1, diceSize)
        end
    end

    # This is a function call to run a 1d20 roll
    # This is the most used dice in our Game Mechanics

    def rollD20()
        self.roll(1,20)
    end
end


# Area for testing the Dice Mechanics 


# test = DiceRoller.new()
# puts test.rollingDiceFunc(4,6)
# puts test.rollD20()
