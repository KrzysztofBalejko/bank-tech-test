module Converter

  def convert(list)
    list.reverse_each do |element|
      puts element.join(",").gsub!(",", " || ")
    end
  end

end
