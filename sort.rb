require_relative 'tax_determination'
require_relative 'tax_calculate'

class Logic
include TaxDetermination
  def data_sort(input)
    obj2 = CalculateTax.new
    input.each do |i|
      last = i.split(/ /).last.to_f
      if i.include?('imported')
        if is_exempt?(i)
          obj2.calculate_tax(last, 0.05)
        else
          obj2.calculate_tax(last, 0.15)
        end
      else
        if is_exempt?(i)
          obj2.calculate_tax(last, 0.00)  
        else
          obj2.calculate_tax(last, 0.10)
        end
      end
    end
  end
end
