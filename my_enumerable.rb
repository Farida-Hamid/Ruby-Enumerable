module MyEnumerable
  def all?
    result = true
    each { |element| result = false unless yield element }
    result
  end
end
