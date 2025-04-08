class Calculator
  def calculate(a, b, operation)
    a = a.to_f
    b = b.to_f

    case operation
    when '+' then a + b
    when '-' then a - b
    when '*' then a * b
    when '/' then b.zero? ? 'Division by zero' : a / b
    else 'Invalid operation'
    end
  end
end