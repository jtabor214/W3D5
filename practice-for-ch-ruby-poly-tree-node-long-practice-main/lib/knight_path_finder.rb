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
                (0..7).to_a.include?(new_x) && (0..7).to_a.include?(new_y)
                valid_positions << [new_x, new_y]
        end
        valid_positions
    end

        def root_node
        @root_node 
        end

        def initialize(position)
            @root_node = PolyTreeNode.new(position)
            @current_positions = []
            build_move_tree
        end

        def new_move_posiitons(pos)

        end 

        def build_move_tree

        end

end