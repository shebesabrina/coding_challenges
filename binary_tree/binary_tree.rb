class Node
  attr_reader :value, :right, :left, :root

  def initialize(argument)
    @value = argument
    @right = nil
    @left = nil
    @root = nil
  end

  def traverse(node)
    @root.nil?
      traverse(node.left)
    print @value
     traverse(node.right)
  end

  def add(new_node)
    # if root.nil?
    #   root = new_node
    #   return nil
    # end
    if new_node.value < self.value
      if self.left != nil
        add(self.left, new_node)
      else
        self.left = new_node
      end
    else
      # add(new_node)
    end
  end

    private

    attr_writer :value, :right, :left, :root
end
