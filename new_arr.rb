require_relative 'tax_calculate'
module CreateArray
  obj = CalculateTax.new
  TAXES = obj.return_all_tax_value
  NEW_ARR = []
  @@j = 0
  def return_result(arr)
    arr.each do |i|
      temp = ""
      x = i.split(/ /)
      for j in (0...x.length-2)
        temp = temp + x[j] + " "
      end
      temp = temp + ": " + CreateArray::TAXES[@@j].to_s
      @@j += 1
      CreateArray::NEW_ARR << temp
    end
    CreateArray::NEW_ARR
  end
end    