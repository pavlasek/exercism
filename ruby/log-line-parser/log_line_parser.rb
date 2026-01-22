# frozen_string_literal: true

# LogLineParser is a class used to work with logger mesages
class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    double_column_index = @line.index(':')
    message_raw = @line[double_column_index + 1, @line.length]

    message_raw.strip
  end

  def log_level
    opening_bracket = @line.index('[')
    closing_bracket = @line.index(']')

    @line[opening_bracket + 1, closing_bracket - 1].downcase
  end

  def reformat
    "#{message} (#{log_level})"
  end
end
