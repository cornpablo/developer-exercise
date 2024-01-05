class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    # TODO
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    if nth < 2
      return 0
    end

    sum = 0
    # all values are initially filled with '1' because the first 2 elements in the sequence are '1',
    # saves space since you don't have to manually assign the values now. the initial values after are 
    # overwritten before they are used, so it does interfere with the rest of the function.
    arr = Array.new(nth - 1, 1)

    # needs to be minus one or it goes farther than it should
    for i in 2..(nth - 1) do
      arr[i] = arr[i - 1] + arr[i - 2]
      if arr[i] % 2 == 0
        sum += arr[i]
      end
    end

    return sum
  end
end
