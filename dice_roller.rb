#In a loop, ask the user to create a die with as many sides as they 
#want. Tell the user that it needs to have a minimum of four sides. 
#Keep asking the user to create dice until the user inputs 0 (zero). 
#As soon as the user stops creating dice, roll them all and return a 
#random face for each die.

def roll_die(sides)
  {
    sides: sides, # number of sides
    face: rand(1..sides)   # a random number between 1 and sides (inclusive)
  }
end

def roll_bucket(dice_sides)
  # return an array of rolled dice
dice_array = []
dice_sides.each {|sides| dice_array << roll_die(sides) }
dice_array

end

def on_the_table(rolled_dice)
  if rolled_dice.empty?
    sentence = "No dice in the bucket"
else
    sentence = "On the table:\n"
    rolled_dice.each {|i| sentence << "  Your #{i[:sides]}-sided die shows the value of #{i[:face]}\n"}
    end
  # return a descriptive string, like:
  # On the table:
  #   Your 4-sided die shows the value of 2
  #   Your 20-sided die shows the value of 17
    sentence
end

# In a loop, ask the user for the dice sides
puts "Hallo you are in the Dice Ruller game! Please create dice with sides no less than 4"

sides_array = [] 
loop do 
  puts "How many sides??"
  sides = gets.chomp.to_i
  break if sides == 0
  sides_array << sides
  
end

results = roll_bucket(sides_array)
puts on_the_table(results)

# When the user enter 0, roll the dice in the basket and show the result


