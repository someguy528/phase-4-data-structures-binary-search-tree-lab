require_relative './node'

class BinarySearchTree
  attr_accessor :root

  def initialize(root = nil)
    @root = root
  end

  def search(value)
    # your code here
    return nil unless @root
    node_to_search = [@root] 
    until false
      pop_node = node_to_search.pop
      if pop_node == nil 
        return nil
      elsif pop_node.value < value 
        node_to_search.push(pop_node.right)
      elsif pop_node.value > value
        node_to_search.push(pop_node.left)
      elsif pop_node.value == value 
        return pop_node
      end
    end
  end

  def insert(value)

    # your code here
    new_node = Node.new(value) 
    return @root = new_node unless @root

    node_to_search = [@root]
    while true
      pop_node = node_to_search.pop
      if pop_node.value == value 
        return nil
      elsif pop_node.value < value
        if pop_node.right 
          node_to_search.push(pop_node.right) 
        else
          pop_node.right = new_node
          return pop_node.right
        end
      elsif pop_node.value > value
        if pop_node.left 
          node_to_search.push(pop_node.left)
        elsif pop_node.left == nil
          return pop_node.left = new_node
        end
      end
    end
  end

end 
