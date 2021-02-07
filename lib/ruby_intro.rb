# When done, submit this entire file to the autograder.

# Part 1

def sum (array)
  summation=0
  for iter in array
    summation+=iter
  end
  return summation
end

def max_2_sum (arr)
  if arr.size==0
    return 0
  end
  if arr.size==1
    return arr[0]
  end
  max1=-(2**(0.size * 8 -2))
  max2=-(2**(0.size * 8 -2))
  for iter in arr
    if iter>=max1
      max1=iter
    end
  end
  flag=0
  for iter in arr
    if iter>=max2 
      if iter == max1 and flag==0
        flag+=1
        next
      end
      max2=iter
    end
  end
  return max1+max2
end

def sum_to_n? (arr, n)
  arr=arr.sort()
  left=0
  right=arr.size()-1
  if right<1
    return false
  end
  while right>left 
    if((arr[left]+arr[right])==n)
      return true
    end
    if((arr[left]+arr[right])<n)
      left=left+1
    else
      right=right-1
    end
  end
  return false 
end


# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, "+name
  
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.size()==0
    return false
  end
  first=s[0].downcase
  if "aeiou".include? first
    return false
  end
  if first>='a' and first<='z'
    return true
  end
  return false
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if (s=='0')
    return true
  end
  if(s.to_i(2)==0)
    return false
  end
  
  if (s.to_i(2))%4==0
    return true
  end
  return false
end

# Part 3

class BookInStock
# YOUR CODE HERE
def initialize(isbn,price)
  if(isbn.size()==0 or price<=0)
    raise ArgumentError
  end
  @isbn=isbn
  @price=price
end
def isbn=(isbn)
  if(isbn.size()==0)
    raise ArgumentError
  end
  @isbn=isbn
end
def price=(price)
  if(price<=0)
    raise ArgumentError
  end
  @price=price
end
def price
  @price
end
def isbn
  @isbn
end
def price_as_string
  return "$"+sprintf('%.2f', price.round(2)).to_s
end
end

