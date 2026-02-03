# frozen_string_literal: true

# module working with cards and showing in what way should be the first turn played
module Blackjack
  def self.parse_card(card)
    case card
    when 'ace' then 11
    when 'king', 'queen', 'jack', 'ten' then 10
    when 'nine' then 9
    when 'eight' then 8
    when 'seven' then 7
    when 'six' then 6
    when 'five' then 5
    when 'four' then 4
    when 'three' then 3
    when 'two' then 2
    else 0
    end
  end

  def self.card_range(card1, card2)
    value = parse_card(card1) + parse_card(card2)

    case value
    when 4..11 then 'low'
    when 12..16 then 'mid'
    when 17..20 then 'high'
    when 21 then 'blackjack'
    end
  end

  def self.first_turn(card1, card2, dealer_card)
    return 'P' if card1 == 'ace' && card2 == 'ace'

    if card_range(card1, card2) == 'blackjack'
      return 'W' if parse_card(dealer_card) < 10

      return 'S'

    end

    return 'S' if card_range(card1, card2) == 'high'

    if card_range(card1, card2) == 'mid'
      return 'H' if parse_card(dealer_card) >= 7

      return 'S'

    end

    return unless card_range(card1, card2) == 'low'

    'H'
  end
end
