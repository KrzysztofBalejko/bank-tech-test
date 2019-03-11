module Converter

  def convert(list)
    list.reverse.each do |element|
      puts element.join(",").gsub!(",", " || ")
    end
  end

end
