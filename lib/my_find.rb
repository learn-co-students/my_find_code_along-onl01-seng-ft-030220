def my_find(collection)
  i = 0
  
  while i < collection.length
    element = collection[i]
    return element if yield(element)
    i += 1
  end
  
end

#calling method

collection = (1..100).to_a

my_find(collection) do |num|
  num % 3 == 0 and num % 5 == 0
end