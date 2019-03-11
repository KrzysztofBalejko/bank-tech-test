module Converter

  def convert(list)
    list.each do |element|
      puts element.join(",").gsub!(",", " || ")
    end
  end

end
