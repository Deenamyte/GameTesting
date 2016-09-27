torch = $stdin.gets.chomp
def blue_room
	if torch == "y"
		puts "You walk through the blue door with the torch in hand and are immediately swarmed by bats. In your attempt
		to get away from them you fling yourself through the other door and find yourself in another room."
		#puts room_three
	elsif torch == "n"
		puts """The ceiling in this room is so high it is shrouded in darkness, but light comes in from 
		another window and provides enough to see a door, which do you go to?"""
		blue = $stdin.gets.chomp

		if blue.include?("window")
			puts """As soon as your feet touch the stone directly in front of the window a cage drops around
			you. Latches spring up from the shadows in front of the window and you are now locked in. You stumble
			as the cage begins to lift from the door. You pass through the darkness near the ceiling until a trap
			door opens above you and the cage stops on the roof of a low stone building. Without warning, and 
			leaving you mystified how it is possible, the bars of the cage drop around you. From behind you comes
			the sound of, of all things, a horse. When you turn to look you see what is actually a pegasus. It
			kneels down and you just know you have to climb on. Awkwardly and uncomfortably you seat yourself
			and the majestic creature flies off into the setting sun. You wake next to your campfire and can't 
			believe the dream you just had. Congratulations! You survived."""
		elsif blue.include?("door")
			#puts room_three
		else
			puts "What are you waiting for? Well, too late now, a swarm of bats flies from the ceiling and you fling
			yourself through the other door and find yourself in another room."
			#puts room_three
		end
	else
		puts "I don't even know how you got here, but now you're dead. Good job."
	end
end

puts blue_room