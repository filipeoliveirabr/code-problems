class BinarySearch
    
    #https://rubyalgo.github.io/algorithms/searching/binary-search/
    #Time Complexity = O(logn)
    
    attr :list
    
    def initialize(list)
        @list = list.sort
    end
    
    def find(value)
        
        upperBound   = list.size - 1
        lowerBound   = 0 
        
        c = 0
        while c < 100
            c = c + 1
            
            p "#{lowerBound} - #{upperBound}"
           if upperBound < lowerBound || upperBound == lowerBound 
               raise "Valor #{value} não encontrado"
           end
           
           midPoint = (lowerBound + ( upperBound - lowerBound ) / 2).floor     
           
           p "midPoint #{midPoint}"
           if list[midPoint] < value
               upperBound = midPoint + 1
               
           elsif list[midPoint] > value
                lowerBound = midPoint
           else
               return list[midPoint]
           end             
        end
    end
end


#p Random.new.rand(2000)

#b = BinarySearch.new([1,2,3,4,9])

def binary_search (a, key)
    lo = 0
    hi = a.length-1
    
    while (lo <= hi)
        mid = lo + ( (hi-lo) / 2 )
        
        if a[mid] == key
            return mid
        elsif a[mid] < key
            lo=mid+1
        else
            hi=mid-1
        end
    end
    return "Value not found in array"
end

#p binary_search([1,2,3,4,5,6,7,8,9], 9)

a = Array.new
r = Random.new
10000000.times do | num |
    a << r.rand(10000000)
end

def binary_search2(a, key)
  lo = 0
  hi = a.length - 1
  
  while( lo <= hi)
    mid = lo + ((hi - lo) / 2)
    
    p "#{lo} - #{hi} - #{a[mid]} - #{key}"
    
    if( a[mid] == key )
        return mid
    elsif(a[mid] < key)
        lo = mid + 1
    else
        hi = mid - 1
    end
  end
  
  return "Valor #{key} nao encontrado"
end

#p binary_search2(a.sort, 3)
#p a


def interpolation_search(a, key)

   lo  =  0
   mid = -1
   hi  =  a.length - 1

    while true
        
        p "lo #{lo} - hi #{hi} - mid #{mid} - a[lo] #{a[lo]} - a[hi] #{a[hi]}"
        
        if lo == hi || a[lo] == a[hi]
            raise "Valor #{key} nao foi encontrado."
        end
        mid = lo + ((hi - lo) / (a[hi] - a[lo])) * (key - a[lo]) 
    
        p "mid[] #{a[mid]}"
    
        if a[mid] == key
            return mid
        elsif a[mid] < key
            lo = mid+1
        else a[mid] > key
            hi = mid-1
        end
    end
end


p interpolation_search(a.sort, a[7123456])