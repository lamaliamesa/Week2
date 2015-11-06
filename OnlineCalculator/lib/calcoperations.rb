class Calculator
  def get_result first, second, operation
    if operation == 'add' 
      result = first + second
    elsif operation == 'sub' 
      result = first - second
    elsif operation == 'mul' 
      result = first * second
    elsif operation == 'div' 
      result = first / second
    end
  end
  def get_math_symbol operation
     if operation == 'add' 
      return "+"
    elsif operation == 'sub' 
      return "-"
    elsif operation == 'mul' 
      return "*"
    elsif operation == 'div' 
      return "/"
    end
  end
  def get_count number
      [1..100].each do |number|
        result = "#{result}#{number}<br>" 
      end
    
  end
end

#[1,2,3].my_each_with_index do |number|
  #puts number
    #number = 4
    #resultado = "1<br>2<br>3<br>4<br>"
