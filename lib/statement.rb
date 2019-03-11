require_relative 'converter_module'

class Statement

  attr_reader :list
  include Converter

  def initialize(list)
    @list = list
  end

  def print(list)
    print_helper
    convert(list)
  end

  def print_helper
    puts "date || credit || debit || balance"
  end

end
