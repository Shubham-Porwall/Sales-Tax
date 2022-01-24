require_relative 'tax_determination'
require_relative 'tax_calculate'

class Logic
include Determine
  def data_sort(arr)
    obj2 = Tax.new
    for i in (0...arr.length)
      @last = arr[i].split(/ /).last.to_f
      if arr[i].include?('imported')
        if isExempt(arr[i])
          obj2.calculate(@last, 0.05)
        else
          obj2.calculate(@last, 0.15)
        end
      else
        if isExempt(arr[i])
          obj2.calculate(@last, 0.00)  
        else
          obj2.calculate(@last, 0.10)
        end
      end
    end
  end
end