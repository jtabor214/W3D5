require_relative "knight_path_finder"

class KnightPathFinder

    MOVES = [
        [1,2], [1, -2],
        [2, 1], [2, -1],
        [-2, 1], [-2, -1],
        [-1, 2], [-1, -2]
      ]
      
      def self.valid_moves(pos)
        x, y = pos
        valid_positions = []
        MOVES.each do |move|
            move_x, move_y = move
            new_x = move_x + x
            new_y = move_y + y 
                if (0..7).to_a.include?(new_x) && (0..7).to_a.include?(new_y)
                    valid_positions << [new_x, new_y]
                end
        end
        valid_positions
      end

        def root_node
          @root_node 
        end

        def initialize(position)
          @root_node = PolyTreeNode.new(position)
          @considered_positions = [position]
          build_move_tree
        end

        def new_move_posiitons(pos)
          if KnightPathFinder.valid_moves.include?(pos) && !@considered_positions.include?(pos)
             @considered_positions.push(pos)
          end
          @considered_positions
        end 

        def build_move_tree
           # self.bfs([7, 7])
        end

end