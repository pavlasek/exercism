# frozen_string_literal: true

# class Birdcount is taking care about bird watching logic
class BirdCount
  def self.last_week
    [0, 2, 5, 3, 7, 8, 4]
  end

  def initialize(birds_per_day)
    @birds_per_day = birds_per_day
  end

  def yesterday
    @birds_per_day[-2]
  end

  def total
    @birds_per_day.sum
  end

  def busy_days
    @birds_per_day.count { |number_of_birds| number_of_birds >= 5 }
  end

  def day_without_birds?
    @birds_per_day.any?(&:zero?)
  end
end
