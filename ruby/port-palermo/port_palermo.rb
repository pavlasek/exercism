# frozen_string_literal: true

# module includes methods to work with the port and the ships
module Port
  IDENTIFIER = :PALE

  def self.get_identifier(city)
    first_4_letter = city[0, 4]
    first_4_letter.upcase.to_sym
  end

  def self.get_terminal(ship_identifier)
    transporting = ship_identifier.to_s[0, 3]

    return :A if %w[OIL GAS].include?(transporting)

    :B
  end
end
