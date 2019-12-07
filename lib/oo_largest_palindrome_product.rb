# Implement your object-oriented solution here!
class LargestPalindromeProduct
  def answer
    pals = []
    x = 999
    y = 999
    while x > 99
      while y > 99
        product = x * y
        pals << product if product.to_s == product.to_s.reverse
        y -= 1
      end
      x -= 1
      y = x
    end
    pals.sort.last
  end
end