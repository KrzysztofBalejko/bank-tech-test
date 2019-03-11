module DateStamp

  def date
    arr = [] << Time.new
    str = arr.join("").slice!(0, 10).tr!('-', '/')
    date_helper(str)
  end

  def date_helper(str)
    order = [] << str.slice(8, 10) << str.slice(4, 4) << str.slice(0, 4)
    order.join("")
  end

end
