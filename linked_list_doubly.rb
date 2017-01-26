class Node
  attr_accessor :prev, :next, :id, :value
  def initialize
    @id = Random.new.rand(10000)
  end
  def to_str
    "[#{@id}] #{@value} prev[#{!@prev.nil?}] next[#{!@next.nil?}]"
  end
end

class LinkedListDoubly
  attr :head
  def insert(value)
    if( @head.nil? )
      @head = Node.new
      @head.value = value
    else
      head_temp = @head
      while( head_temp.next )
        head_temp = head_temp.next
      end
      head_temp.next       = Node.new
      head_temp.next.value = value
      head_temp.next.prev  = head_temp
    end
  end

  def delete(value)
  end

  def search(value)
  end

  def display_forward
    if(@head)
      head_temp = @head
      while(head_temp)
        p head_temp.to_str
        head_temp = head_temp.next
      end
    end
  end

  def display_backward
    if @head
      head_temp = @head
      while(head_temp.next)
        head_temp = head_temp.next
      end
      p head_temp.to_str
      while( head_temp.prev )
        head_temp = head_temp.prev
        p head_temp.to_str
      end
    end
  end
end

list = LinkedListDoubly.new
10.times do | num |
  list.insert( num )
end

list.display_forward
p "================="
list.display_backward
