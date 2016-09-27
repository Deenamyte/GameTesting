class Player
  def initialize
    @has_torch = false
  end

  def take_torch
    @has_torch = true
  end

  def drop_torch
    @has_torch = false
  end

  def has_torch?
   @has_torch
  end
end

player = Player.new

puts """A torch on the wall provides the only light, 
    and despite it's strange purple flames it actually provides quite a bit
    of light. Across from you are a blue door and a green door. On the wall 
    to your right is a red door. Do you grab the torch? [y/n]"""
print ">>"
user_input = $stdin.gets.chomp

if user_input == 'y'
  player.take_torch
elsif user_input == 'n'
  player.drop_torch
else
  puts "Try again!"
  puts ">>"
  user_input = $stdin.gets.chomp
end

puts "Well that's your perogative. Now, which door do you go through?"
print ">>"
door = $stdin.gets.chomp

if door == "blue" && player.has_torch?
  if @has_torch = true
    puts "You walk through the door torch in hand and get swarmed by bats."
  elsif @has_torch = false
    puts "You walk through the blue door and see a window to your left and a door across from you. What next?"
  else
    puts "As you stand in indecision the purple flames die until you can't see anything and you wander into a hole in the floor and die."
  end
else
  puts "No door? Ok you die."
end
