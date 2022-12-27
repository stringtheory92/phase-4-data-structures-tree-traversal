require 'pry'
class Tree
  def initialize(root = nil)
    @root = root
  end
  
  def breadth_first_traversal(node)
    # initialize an empty output array
    result = []
    # initialize an array of nodes to visit and add root node to it
    nodes_to_visit = [node]
    # while there are nodes in the nodes-to-visit array
    while nodes_to_visit.length > 0
      #    remove the first node from the nodes-to-visit-array
      node = nodes_to_visit.shift
      #    add its value to the output array
      result.push(node[:value])
      #    add its children (if any) to the end of the nodes to visit array
      nodes_to_visit = nodes_to_visit + node[:children]

    end
    # return output array
    result
  end

  def depth_first_traversal(node)
    result = []
    nodes_to_visit = [node]

    while nodes_to_visit.length > 0
      node = nodes_to_visit.shift
      result.push(node[:value])
      nodes_to_visit = node[:children] + nodes_to_visit
    end
    
    result
  end

  def depth_first_traversal_recursive(node, result = [])
    result.push(node[:value])

    node[:children].each do |child|
      depth_first_traversal_recursive(child, result)
    end

    result
  end

  def get_element_by_id(str)
  
 
  
    nodes_to_visit = [@root]
    while nodes_to_visit.length > 0
      node = nodes_to_visit.shift
      if node[:id] == str
        return node
      end
      nodes_to_visit = node[:children] + nodes_to_visit
    end
  end
end