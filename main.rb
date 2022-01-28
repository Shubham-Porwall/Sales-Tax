require_relative "input_collector"
require_relative "input_processor"
require_relative "receipt_printer"

input = InputCollector.new.call
products = InputProcessor.new(input).run
ReceiptPrinter.new(products).run
