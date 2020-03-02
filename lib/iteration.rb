def join_ingredients(src)
results = []
row_index = 0
while row_index < src.count do
  element_index = 0
  ingredients = []

  while element_index < src[row_index].count do
    ingredients << src[row_index][element_index]
    element_index += 1
  end
  string = "I love " + ingredients[0] + " and " + ingredients[1] + " on my pizza"
  results.push(string)
  row_index += 1
end
results
end

def find_greater_pair(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
  row_index = 0
  largerNums = []
  while row_index < src.count do
    element_index = 0
    largestVal = src[row_index][element_index]
    while element_index < src[row_index].count do
      if src[row_index][element_index] > largestVal
        largestVal = src[row_index][element_index]
      end
      element_index += 1
    end
    largerNums << largestVal
    row_index += 1
  end
  largerNums
end

def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
  row_index = 0
  sum = 0;
  while row_index < src.count do
    element_index = 0
    even = false
    while element_index < src[row_index].count do
      if src[row_index][element_index] % 2 == 0
        even = true
      else
        even = false
      end
      element_index += 1
    end
    if even
      sum += (src[0] + src[1])
    row_index += 1
  end
  sum
end
