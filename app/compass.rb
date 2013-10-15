class Compass
	attr_accessor:x
	attr_accessor:y
	attr_accessor:orientation

	def initialize(x,y,orientation)
		@x=x
		@y=y
		@orientation=orientation
	end

	def turn_left()
		if @orientation=="N"
			@orientation= "W"
		 elsif @orientation=="W"
			@orientation="S"
		 elsif @orientation =="S"
		 	@orientation = "E"
		 elsif @orientation =="E"
		 	@orientation = "N"
		end
	end

	def turn_right()
		if @orientation=="N"
			@orientation= "E"
		 elsif @orientation=="W"
			@orientation="N"
		 elsif @orientation =="S"
		 	@orientation = "W"
		 elsif @orientation =="E"
		 	@orientation = "S"
		end
	end

	def move()
		if @orientation=="N"
			@orientation="N"
		elsif @orientation=="W"
			@orientation="W"
		elsif @orientation=="E"
			@orientation="E"
		elsif @orientation=="S"
			@orientation="S"
		end	
	end
  	

	def move
    to_move = {"N" => @y+1, "W" => @x-1, "S" => @y-1, "E" => @x+1}
 
    if (@orientation == "N" or @orientation == "S")
      @y = to_move[@orientation]
    elsif (@orientation == "E" or @orientation == "W")
      @x = to_move[@orientation]
    end
  end


end