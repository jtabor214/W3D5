require 'byebug'

class PolyTreeNode
    
    attr_reader :value, :parent, :children

  def initialize(value)
    @value = value
    @parent = nil
    @children = []
  end   

  def parent=(new_parent)
        #return self if self.parent == new_parent
        #deattach from the current parent so we can reassign to the new parent
        if self.parent
            self.parent.children.delete(self)
        end

        @parent = new_parent
        self.parent.children << self unless self.parent.nil?
  end  

  def add_child(child)
    child.parent = self
  end
  
  def remove_child(child)
    child.parent = nil
    raise "not a child" unless self.children.include?(child)
  end

  def dfs(target)
    return self if self.value == target

    @children.each do |child|
      result = child.dfs(target)
      return result if !result.nil? 
    end
    nil
  end

  def bfs(target)
    # return self if self.value == target
    queue = [self]

    while !queue.empty?
      node = queue.shift
      
      # node.bfs(target)
      if node.value == target
        return node
      else
        node.children.each {|child_node| queue << child_node }
      end

    end
    nil
  end
end

