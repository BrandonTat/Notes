class ListNode
  attr_accessor :value, :next

  def initialize(value = nil)
    @value = value
    @next = nil
  end
end

class LinkedList
  def initialize(value)
    @head = ListNode.new(value)
  end

  def search(value)
    p1 = @head

    while p1
      return p1 if p1.value == value
      p1 = p1.next
    end

    nil
  end

  def insert(node, new_node)
    new_node.next = node.next
    node.next = new_node
  end

  # Assumes node is not a tail
  def delete_after(node)
    node.next = node.next.next
  end
end
