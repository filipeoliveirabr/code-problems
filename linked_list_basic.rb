class Node
  attr_accessor :id, :value, :node_next

  def initialize
    @id = Random.new.rand(100000)
  end
  def to_str
    "[#{@id}] #{@value}, next: #{!@node_next.nil?}"
  end
end

class LinkedListBasic

  @node

  def insert(value)
    node_insert = Node.new
    node_insert.value = value

    if @node.nil?
      @node = node_insert
    else
      node_temp = @node
      while( node_temp.node_next )
        node_temp = node_temp.node_next
      end
      node_temp.node_next = node_insert
    end
  end

  def delete(value)
    node_last = nil
    node_temp = @node
    while( node_temp )
      if node_temp.value == value
          if node_last.nil?
            @node = node_temp.node_next
          else
            node_last.node_next = node_temp.node_next
            node_temp = nil
          end
          break;
      end
      node_last = node_temp
      node_temp = node_temp.node_next
    end

  end

  def display
    node_temp = @node
    while( node_temp )
      puts node_temp.to_str
      node_temp = node_temp.node_next
    end
  end

  def search(value)
    node_temp = @node
    while( node_temp )
      if( node_temp.value == value )
        break
      end
      node_temp = node_temp.node_next
    end
    node_temp
  end

  def delete_all
    @node = nil
  end
end

llb = LinkedListBasic.new

10.times do | num |
  llb.insert(num)
end

p "============"
llb.display
p "============"

llb.delete(5)
p "============"
llb.display
p "============"
llb.delete_all
p "============"
llb.display

