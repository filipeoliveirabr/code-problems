class Node
  attr_accessor :value, :next

  def initialize(value)
    @value = value
  end 
end

class Stack
  attr :top, :count
  MAX = 10

  def initialize
    @count = 0
  end

  def push(value)
    if(@count == MAX)
      raise "Limite máximo excedido"
    end

    unless @top
      @top = Node.new(value)
    else
      top_temp = @top
      @top = Node.new(value)
      @top.next = top_temp
    end
    @count = @count + 1
  end

  def pop()
    @count = @count - 1
    top_temp = @top
    @top = @top.next
    top_temp
  end

  def peek()
    @top
  end

  def isFull()
    @count == MAX
  end

  def isEmpty()
    @top.nil?
  end
end

stack = Stack.new
40000.times do | num |
  unless stack.isFull()
    stack.push(num)
  end
end

10.times do | num |
  p stack.pop.value
end
p stack.isEmpty()
