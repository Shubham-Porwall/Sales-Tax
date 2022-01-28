class TaxCalculator
  PRODUCTS = %w(pills book books chocolate chocolates)

  def initialize(product)
    @product = product
  end

  def run
    tax_rate = is_exempt? ? 0.0 : 0.10
    tax_rate += 0.05 if @product[:name].include?('imported')
    @product[:price] * tax_rate
  end

  private
  def is_exempt?()
    return !(@product[:name].split & PRODUCTS).empty?
  end
end
