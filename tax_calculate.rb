class CalculateTax
  WITH_TAX = []
  @@sum_without_tax = 0.0
  @@sum_with_tax = 0.0
  @@diff = 0.0
  def calculate_tax(last, tax)
    @@sum_without_tax = @@sum_without_tax.to_f + last
    @value = last + last * tax
    @@sum_with_tax = @@sum_with_tax + @value 
    CalculateTax::WITH_TAX << @value.round(2)
  end

  def return_all_tax_value
    return CalculateTax::WITH_TAX
  end

  def return_sales_tax
    @@diff = @@sum_with_tax - @@sum_without_tax.to_f
    @@diff.round(2)
  end
  
  def return_sum_withtax
    return @@sum_with_tax.round(2)
  end
end
