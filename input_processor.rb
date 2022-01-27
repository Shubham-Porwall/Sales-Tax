require_relative 'tax_calculator'

class InputProcessor
  def initialize(records)
    @records = records
  end

  def run
    products = []
    @records.each do |record|
      product = {}

      splitted = record.split(/ /)
      product[:quantity] = splitted.first.to_i
      product[:price] = product[:quantity] * splitted.last.to_f
      product[:name] = record.split(" at ").first.delete("/0-9/").strip
      product[:tax] = TaxCalculator.new(product).run

      products << product
    end

    products
  end
end