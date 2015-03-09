class ChessKnight
	def probability (x,y,sx,sy)
		row,col = x,y
		grid = Array.new(row) { Array.new(col,-1) }

		grid[sx][sy] = 0

		xMoves = [2,1,-1,-2,-2,-1,1,2]
		yMoves = [1,2,2,1,-1,-2,-2,-1]

		if(solve(0,0,1,grid,xMoves,yMoves)==false)
			print "Solution doesn't exist"
			return false
		else
			display_grid(grid)
		end
		return true
	end

	def is_safe(x,y,grid)
		if(x>=0 && x<grid.length && y>=0 && y<grid.length && grid[x][y]==-1)
			return true
		end
		return false
	end

	def solve(x,y,move,grid,xMoves,yMoves)
		if(move == grid.length*grid.length)
			return true
		end
		for i in 0...8
			next_x = x+xMoves[i]
			next_y = y+yMoves[i]

			if(is_safe(next_x,next_y,grid))
				grid[next_x][next_y] = move
				if(solve(next_x,next_y,move+1,grid,xMoves,yMoves)==true)
					return true
				else
					grid[next_x][next_y] = -1
				end
			end
 		end
 		return false
	end

	def display_grid(grid)
		for i in 0...8
			for j in 0..8
				print " #{grid[i][j]}"
			end
			print "\n"
		end

	end

	
end


print "Enter starting x co-odinate:"
sx = gets.chomp.to_i
print "Enter starting y co-odinate:"
sy = gets.chomp.to_i

ChessKnight.new.probability(8,8,sx,sy)
