require_relative 'tax_calculate'
require_relative 'new_arr'
class Result
  include CreateArray
  def display(arr)
    result = []
    obj = CalculateTax.new
    arr1 = return_result(arr)
    result << arr1
    puts result
    puts "Sales Tax : " + obj.return_sales_tax.to_s
    puts "Total : " + obj.return_sum_withtax.to_s
  end
end
