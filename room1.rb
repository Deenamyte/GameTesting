def room_one
	puts """You wake up laying on a cold stone floor, the last thing you
		remember is falling asleep in front of the fire you built on the
		riverside. Looking around, you see a stone door behind you, a window
		to your left and a wooden door across from you. What do you do?"""
	print ">"
	choice = $stdin.gets.chomp

	if choice.include?("stone")
		puts """The stone door looks over a cliff and a gust of wind knocks
			you off balance. You fall out the door to the bottom of a chasm.
			Splat! Sorry, you're dead."""
	
	elsif choice.include?("window")
		puts """The window looks along the edge of a cliff for miles, when
			you try to open it you discover it is locked and determine it is
			too thick to break without breaking yourself. Try again! \n\n"""
			puts room_one

	elsif choice.include?("wood")
		puts """You walk into a room lit only by a single torch on the wall.
		Despite it's strange purple flames it actually provides quite a bit
		of light. Across from you are a blue door and a green door. On the wall 
		to your right is a red door. Do you grab the torch? [y/n]"""
		puts ">"
		torch = $stdin.gets.chomp
		torch.downcase
		#puts room_two
	else
		puts """As you stand in idiotic silence debating with yourself the best
		way to jack off a bird crashes into the window and the force of the wind
		causes you to slam against the wall so hard even your thick skull cracks
		and your tiny brain seeps out. Congratulations! You died."""
	end
end

print room_one
