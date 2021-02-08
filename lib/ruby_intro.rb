# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  _sum = 0
  arr.each do |item|
    _sum += item
  end
  return _sum
end

def max_2_sum arr
  # YOUR CODE HERE
  arrlength = arr.length
  if arrlength == 0
    return 0
  
  elsif arrlength == 1
    return arr[0]
  end 

  arr.sort!
  return arr[arrlength-1] + arr[arrlength-2]
  
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  for i in 0..arr.length-1
    for j in (i+1)..arr.length-1
      if (arr[i] + arr[j]) == n
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return 'Hello, '+name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.length == 0
    return false
  end
  firstc = s[0]
  if firstc =~ /[[:alpha:]]/
    if firstc == 'a' or firstc == 'A' or firstc == 'e' or firstc == 'E' or firstc == 'i' or firstc == 'I' or firstc == 'o' or firstc == 'O' or firstc == 'u' or firstc == 'U'
      return false
    end

  else
    return false
  end
  return true
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.count('01') != s.size
    return false
  end
  if s == '0'
    return true
  end
  if s.slice(s.length-2,s.length-1) == '00' 
    return true
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
def initialize(isbn, price)
  if isbn.length == 0 or price <= 0
    raise ArgumentError.new("Wrong arguments")
  end
  @isbn = isbn
  @price = price
end

def isbn
  @isbn
end

def price
  @price
end

def isbn=(isbn)
  @isbn = isbn
end

def price=(price)
  @price = price
end

def price_as_string
  formattedprice = '%.2f' % @price
  formattedprice = '$' + formattedprice
  return formattedprice
end

end
