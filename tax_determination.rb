module Tax_Determination
  PRODUCT = %w(pills book books chocolate chocolates)
  def isExempt(arr)
    @bool = false
    for i in (0...Tax_Determination::PRODUCT.length)
      if arr.include?Tax_Determination::PRODUCT[i]
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
