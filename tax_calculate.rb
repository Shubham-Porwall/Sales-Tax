class Tax
  With_tax = []
  @@sum_without = 0.0
  @@sum_with = 0.0
  @@diff = 0.0
  def calculate(last,tax)
    @@sum_without = @@sum_without.to_f + last
    @value = last + last * tax
    @@sum_with = @@sum_with + @value 
    Tax::With_tax << @value.round(2)
  end
  def ret_tax
    return Tax::With_tax
  end
  def differ
    @@diff = @@sum_with - @@sum_without.to_f
    @@diff.round(2)
  end
  def ret_sum
    return @@sum_with.round(2)
  end
end