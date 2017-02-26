# @param {Integer} x
# @return {Integer}
def reverse(x)
    rev = 0
    8.times do | num |
    #while( x != 0 )    
        tail = x % 10
        newResult = (rev * 10) + tail
        if ((newResult - tail) / 10 != rev)
         return 0
        end
        rev = newResult;
        x = x / 10
        p "#{tail} #{x} #{rev}"
    end
    rev
end

#p reverse(-123456)


def reverse2(x)
    result = 0
    negative = x < 0
    if negative
        x = x * -1
    end
    while (x != 0)
        tail = x % 10
        result_temp = result * 10 + tail
        if ((result_temp - tail) / 10 != result)
            return 0
        end
        result = result_temp
        x = x / 10
    end
    if negative
        result = result * -1
    end
    if 2147483647 < result
        return 0
    end
    return result
end
#p reverse2(1534236469)




def reverse3(x)
    neg = x < 0
    if neg
        x = x * -1
    end
    result = 0
    while( x != 0 )
        tail = x % 10
        result = (result * 10) + tail 
        x = x / 10
    end
    if neg
        result = result * -1
    end
    result
end

x = -2147447412
y = reverse3(x)

def isPalindrome(x)
    if (x < 0) 
        return false
    end
    a = x
    q = 0
    
    while (a >= 10)
        q *=10 
        q += a%10
        a /=10
    end
    return q == x / 10 && a == x % 10;
end


#I = 1  V = 5  X = 10  L =  50  C = 100  D = 500  M = 1000

#MDIV
def roman_to_int(s)
    romans = {'M' => 1000,'D' => 500 ,'C' => 100,'L' => 50,'X' => 10,'V' => 5,'I' => 1}
    z = 0
    for i in 0..(s.length - 2)
        if romans[s[i]] < romans[s[i+1]]
            z -= romans[s[i]]
        else
            z += romans[s[i]]
        end
    end
    return z + romans[s[-1]]
end

#p roman_to_int("D")
#p Math.log10(987654321).to_i + 1

#p roman_to_int("MDIV")

def int_to_roman(num)
    m = ["", "M", "MM", "MMM"]
    c = ["", "C", "CC", "CCC", "CD", "D", "DC", "DCC", "DCCC", "CM"]
    x = ["", "X", "XX", "XXX", "XL", "L", "LX", "LXX", "LXXX", "XC"]
    i = ["", "I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX"]
    return m[num/1000] + c[(num%1000)/100] + x[(num%100)/10] + i[num%10];
end
#p int_to_roman(3000)



# https://leetcode.com/problems/merge-two-sorted-lists/
# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end

l1 = ListNode.new(0)
for n in 1..10 do
    last = l1
    while(last.next)
        last = last.next    
    end
    last.next = ListNode.new(n)
end

l2 = ListNode.new(0)
for n in 1..10 do
    last = l2
    while(last.next)
        last = last.next    
    end
    last.next = ListNode.new(n)
end


def merge_two_lists(l1, l2)
		if (l1 == nil) 
		    return l2
		end
		if(l2 == nil)
		    return l1
		end
		
		if(l1.val < l2.val)
			l1.next = merge_two_lists(l1.next, l2)
			return l1
		else
			l2.next = merge_two_lists(l1, l2.next)
			return l2;
		end
end

#p merge_two_lists(l1, l2)














def merge_two_lists2(l1, l2)
    if l1 == nil
        return l2
    end
    if l2 == nil
        return l1
    end
    
    if(l1.val < l2.val)
        l1.next = merge_two_lists2(l1.next, l2)
        return l1
    else
        l2.next = merge_two_lists2(l1, l2.next)
        return l2
    end
end


#p merge_two_lists2(l1, l2)
def sum(v)
    if v == 0
        return 0
    end
    return v + sum(v - 1)
end

#p "total:"
#p sum(3)

def fibonacci(n)
    if n <= 1
        return n
    end
    return fibonacci(n - 1) + fibonacci(n - 2)
end

#p fibonacci(22)


# https://leetcode.com/problems/valid-parentheses/
# @param {String} s
# @return {Boolean}
def is_valid(s)
   open_map  = { "("=>")", "{"=>"}", "["=>"]"}
   close_map = { ")"=>"(", "}"=>"{", "]"=>"["}

   str_array = s.split(//)

   unless str_array.length.even?
    return false
   end
   
   stack_str = []
   str_array.each do | key |
       if !open_map[key].nil?
            stack_str << key
        elsif !close_map[key].nil? && close_map[key] == stack_str[-1] 
            stack_str.pop        
        else
            return false
        end
   end
   return stack_str.length == 0
end

#p is_valid("()")

# https://leetcode.com/problems/count-and-say/
# @param {Integer} n
# @return {String}
def count_and_say(n)
    
end


# https://leetcode.com/problems/plus-one/
def plus_one2(digits)
    num = digits.inject{|memo, mun| memo * 10 + mun}
    num = num + 1
    num_ar = []
    num.to_s.split(//).each do | v |
        num_ar << v.to_i
    end
    num_ar
end

def plus_one(digits)
end

(20).downto(10).each { |i| puts i }