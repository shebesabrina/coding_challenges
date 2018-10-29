# l1 = [1,2,4]
# l2 = [1,1,4]
# def merge_two_lists(l1, l2)
#     l1.zip(l2).join
#
# end
#
# puts merge_two_lists(l1, l2)


class ListNode
    attr_accessor :val, :next
    def initialize(val, node=nil)
        @val = val
        @next = node
    end
end

n5 = ListNode.new(5)
n4 = ListNode.new(4, n5)
n2 = ListNode.new(1, n4)
first_node = ListNode.new(1, n2)

n42 = ListNode.new(4)
n3 = ListNode.new(3, n42)
second_node = ListNode.new(1, n3)

def merge_two_lists(l1, l2, current = nil, head = nil)
  if l1.nil?
    current.next = l2
    return head
  elsif l2.nil?
    current.next = l1
    return head
  end

  if l1.val <= l2.val
    if current
      current.next = ListNode.new(l1.val)
      merge_two_lists(l1.next, l2, current.next, head)
    else
      head = ListNode.new(l1.val)
      merge_two_lists(l1.next, l2, head, head)
    end
  else
    if current
    current.next = ListNode.new(l2.val)
    merge_two_lists(l1, l2.next, current.next, head)
    else
      head = ListNode.new(l2.val)
      merge_two_lists(l1, l2.next, head, head)
    end
  end
end

new_list = merge_two_lists(first_node, second_node)
puts new_list.val
puts new_list.next.val
puts new_list.next.next.val
puts new_list.next.next.next.val
puts new_list.next.next.next.next.val
puts new_list.next.next.next.next.next.val
puts new_list.next.next.next.next.next.next.val
puts new_list.next.next.next.next.next.next.next.val
