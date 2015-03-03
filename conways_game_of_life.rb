# carlos_conways_game_of_life.rb

# Tasks:
# 01. Display a Matrix of 10 x 10
# 02. Insert random elements into the Matrix (any single digit) and display it
# 03. Ask if user wants a new random matrix and display if user said yes
# 04. Generate a Matrix of max(30) rows x max(100) columns, based on user input
#     With values only being ' ' and '0'
# 05. Test is cells are alive or not (' ' is dead and '0' is alive)
# 06. Apply Rules of Conways game of life - Part 1
#   Count living cells surrounding each element in matrix
# 07. Apply Rules of Conways game of life - Part 2
#   Create new matrix with rules applied, display it and iterate it for 10 times
#   Rules:
#     Any live cell with fewer than two live neighbours dies, as if caused by under-population.
#     Any live cell with two or three live neighbours lives on to the next generation.
#     Any live cell with more than three live neighbours dies, as if by overcrowding.
#     Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction.


# Extra 01. Use n iterations
# Extra 02. Fix menus and presentation
# Extra 03. Let user decide what percentage of board to fill with '0' at the beginning.
# Extra 04. Move classes to files of their own







@matrix = [

["0", "0", "0", "0", "0", "0", "0", "0", "0", "0"],
["0", "0", "0", "0", "0", "0", "0", "0", "0", "0"],
["0", "0", "0", "0", "0", "0", "0", "0", "0", "0"],
["0", "0", "0", "0", "0", "0", "0", "0", "0", "0"],
["0", "0", "0", "0", "0", "0", "0", "0", "0", "0"],
["0", "0", "0", "0", "0", "0", "0", "0", "0", "0"],
["0", "0", "0", "0", "0", "0", "0", "0", "0", "0"],
["0", "0", "0", "0", "0", "0", "0", "0", "0", "0"],
["0", "0", "0", "0", "0", "0", "0", "0", "0", "0"],
["0", "0", "0", "0", "0", "0", "0", "0", "0", "0"]

]

@tracker_matrix = [

["0", "0", "0", "0", "0", "0", "0", "0", "0", "0"],
["0", "0", "0", "0", "0", "0", "0", "0", "0", "0"],
["0", "0", "0", "0", "0", "0", "0", "0", "0", "0"],
["0", "0", "0", "0", "0", "0", "0", "0", "0", "0"],
["0", "0", "0", "0", "0", "0", "0", "0", "0", "0"],
["0", "0", "0", "0", "0", "0", "0", "0", "0", "0"],
["0", "0", "0", "0", "0", "0", "0", "0", "0", "0"],
["0", "0", "0", "0", "0", "0", "0", "0", "0", "0"],
["0", "0", "0", "0", "0", "0", "0", "0", "0", "0"],
["0", "0", "0", "0", "0", "0", "0", "0", "0", "0"]

]


@alive = 'x'
@dead = '0'

def start_game
  puts "Welcome to Conways game of life"
  puts "Choose how many random starts"
  @player = gets.chomp
  puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

end



def random_start
  @player.to_i.times do @matrix[rand(10)][rand(10)] = 'x'
        end

  @matrix.each do |row| 
        puts row.map { |col| col}.join(' ')
          end

    if @alive # = @matrix[rand(10)][rand(10)]
      
        @alive.each[][] 

        @matrix[+1][+1] # downright
        @matrix[+1][-1] # downleft
        @matrix[+1][0]  # down
        @matrix[-1][+1] # upright
        @matrix[-1][-1] # upleft
        @matrix[-1][0]  # up
        @matrix[0][-1]  # left
        @matrix[0][+1]  # right

      
    end
        # tracker_matrix.new
        # board[1][2]
        # test if board[0][1] == 'x'
        # @@alive_neighbors.@@count += 1
        # tracker[1][2] = @@alive_neighbors

end
 

# class 

#   def initialize(@alive, @dead)
#     "#{@alive} #{@dead}" 
#        @@alive_spots = @alive
#        @dead_spots = @dead
#   end

#   def @alive
#     @@alive_spots
#   end

#   def @dead
#     @dead_spots.capitalize
#   end

#   def zipcode_and_name
#     puts "Its @zipcode_and_name empty? : #{@zipcode_and_name.nil?}"
#     @zipcode_and_name ||= "#{@zipcode} #{@name}"
#   #   @zipcode_and_name = @zipcode_and_name || "#{zipcode} #{name}"
#   end 

# end




start_game
random_start



    # if @matrix(x, y)
    # end

# @options = [1, 2, 3, 4, 5, 6, 7, 8, 9]

# @matrix << [matrix.rand(@options).to_i]

# def matrix_method
    
#   matrix << matrix.sample %w[1..9].to_i

# end








