# frozen_string_literal: true

# class SimpleCalculator provides simple calculator functionality
class SimpleCalculator
  class UnsupportedOperation < StandardError; end

  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  def self.calculate(first_operand, second_operand, operation)
    raise UnsupportedOperation unless ALLOWED_OPERATIONS.include?(operation)
    raise ArgumentError unless first_operand.is_a?(Numeric) && second_operand.is_a?(Numeric)
    return 'Division by zero is not allowed.' if second_operand.zero?

    result = 0

    case operation
    when '+' then result = first_operand + second_operand
    when '*' then result = first_operand * second_operand
    when '/' then result = first_operand / second_operand
    end

    "#{first_operand} #{operation} #{second_operand} = #{result}"
  end
end
