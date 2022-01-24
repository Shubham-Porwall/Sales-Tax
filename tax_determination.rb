module Determine
  Product = %w(pills book books chocolate chocolates)
  def isExempt(arr)
    @bool = false
    for i in (0...Determine::Product.length)
      if arr.include?Determine::Product[i]
        @bool = true
        break;
      end
    end
    if (@bool)
      return true
    else
      return false
    end
  end
end
