class SimpleProgram

  def initialize(number)
    raise unless number.is_a?(Numeric)
    @number = number
  end

  def add(inc_num)
    @number + inc_num
  end

  def multiply(inc_num)
    @number * inc_num + 2
  end

end
