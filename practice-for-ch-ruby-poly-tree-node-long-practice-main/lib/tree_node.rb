require 'byebug'

class PolyTreeNode
    
    attr_reader :value, :parent, :children

  def initialize(value)
    @value = value
    @parent = nil
    @children = []
  end   

  def parent=(parent_node)
        #return self if self.parent == parent_node
        #deattach from the current parent so we can reassign to the new parent
        if self.parent
            self.parent.children.delete(self)
        end

        @parent = parent_node
        self.parent.children << self unless self.parent.nil?
  end  

  def add_child(child)
    child.parent = self
  end
  
  def remove_child(child)
  end
end

