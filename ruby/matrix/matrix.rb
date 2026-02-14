# frozen_string_literal: true

# class Matrix consist methods to show rows and cols of the matrix
class Matrix
  attr_reader :rows, :cols

  def initialize(matrix_string)
    @rows = matrix_string.split("\n").map do |line|
      line.split.map(&:to_i)
    end

    @cols = @rows.transpose
  end

  def row(id)
    @rows[id - 1]
  end

  def column(id)
    @cols[id - 1]
  end
end
