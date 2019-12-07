# Implement your procedural solution here!

# find every multiple of 3-digit numbers

# add them to an array only if they're palindromes

# find largest member of array


def largest_palindrome_product
  # pals = []
  x = 999
  y = 999
  while x > 99
    reset_point = (x - 1) * (y - 1)
    while y > 99
      product = x * y
      if product <= reset_point
        x -= 1
        y = x + 1
        reset_point = (x - 1) * (y - 2)
      else
        return product if product.to_s == product.to_s.reverse
      end
      y -= 1
    end
    x -= 1
    y = x + 1
  end
  # pals.sort.last
end

# multiply x by every number from itself down to 100
# decrement x by 1 and repeat