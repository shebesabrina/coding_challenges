class Node
  attr_reader :value
  attr_accessor :children
  def initialize(value = nil)
    @value = value
    @children = []
  end
end

class CompleteMe
  attr_accessor :root_node

  def initialize(root_value = nil)
    @root_node = Node.new(root_value)
  end

  def find(word)
    root_node.children.any? do |char|
      word.start_with?(char)
    end
  end

  def insert(word)
    word.each_char do |chr|
      unless find(chr)
        insert(chr)
      end
    end
  end
end


completion = CompleteMe.new
p completion
completion.insert("pizza")
