class KnightChess
	def initalize(x,y,sx,sy)
		row,col = x,y
		grid = Array.new(row) { Array.new(col,-1) }
		xMoves = [2,1,-1,-2,-2,-1,1,2]
		yMoves = [1,2,2,1,-1,-2,-2,-1]


		if(solve(sx,sy,1,grid,xMoves,yMoves)==false)
			puts "No solution exist"
			return false
		else
			display_grid(grid,x,y)
		end
		return true
	end

	def display_grid(grid,x,y)
		print "\n"
		for i in 0...x
			for j in 0...y
				print " #{grid[i][j]}"
			end
			print "\n"
		end
	end

	def is_safe(x,y,grid)
		if(x>=0 && x<8 && y>=0 && y<8 && grid[x][y] == -1)	
			return true
		end
		return false
	end

	def solve(x,y,move,grid,xMoves,yMoves)
		if(move == 64)
			grid[x][y] = move
			return true	
		end
		grid[x][y] = move
		neighbours(x,y,xMoves,yMoves,grid,move)

	end

	def neighbours(x,y,xMoves,yMoves,grid,move)
		count = 0
		min = 8
		all_neighbours = Array.new
		for j in  0...8 
			next_x = x+xMoves[j]
			next_y = y+yMoves[j]

			if(is_safe(next_x,next_y,grid)==true)
				for i in 0...8
					x1 = next_x+xMoves[i]
					y1 = next_y+yMoves[i]

					if(is_safe(x1,y1,grid))
						count = count+1
					end

				end
				if(count<=min)
					min=count
					index = j
				end
				count = 0
			end	
		end
		curr_x = x+xMoves[index]
		curr_y = y+yMoves[index]
		solve(curr_x,curr_y,move+1,grid,xMoves,yMoves)
	end

end

print "Enter ChessBoard (n*n):"
n = gets.chomp.to_i
print "Enter starting x co-odinate:"
sx = gets.chomp.to_i
print "Enter starting y co-odinate:"
sy = gets.chomp.to_i

obj = KnightChess.new
obj.initalize(n,n,sx,sy)