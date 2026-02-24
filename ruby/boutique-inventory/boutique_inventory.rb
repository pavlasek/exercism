# frozen_string_literal: true

# class BoutiqueInventory takes care of the boutique invetory
class BoutiqueInventory
  def initialize(items)
    @items = items
  end

  def item_names
    names = []
    @items.each do |item|
      names.append(item[:name])
    end

    names.sort
  end

  def cheap
    cheap_prize = 30

    cheap_items = []
    @items.each do |item|
      cheap_items.append(item) if item[:price] < cheap_prize
    end

    cheap_items
  end

  def out_of_stock
    out_of_stock_items = []

    @items.each do |item|
      out_of_stock_items.append(item) if item[:quantity_by_size] == {}
    end

    out_of_stock_items
  end

  def stock_for_item(name)
    @items.each do |item|
      return item[:quantity_by_size] if item[:name] == name
    end
  end

  def total_stock
    total_stock = 0

    @items.each do |item|
      stock = stock_for_item(item[:name])

      stock.each_value do |number_of_items|
        total_stock += number_of_items
      end
    end

    total_stock
  end

  private

  attr_reader :items
end
