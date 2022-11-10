module MyEnumerable
  def all?
    result = true
    each { |element| result = false unless yield element }
    result
  end

  def any?
    result = false
    each { |element| result = true if yield element }
    result
  end

  def filter?
    result = []
    each { |element| result << element if yield element }
    result
  end
end
