class Event
  attr_reader :event_name, :participant_ages

  def initialize(event_name, participant_ages)
    @event_name = event_name
    @participant_ages = participant_ages
  end

  def name?
    @event_name
  end

  def ages?
    @participant_ages
  end

  def max_age
    @participant_ages.max
  end

  def min_age
    @participant_ages.min
  end

  def average_age
    @participant_ages.sum.to_f / @participant_ages.length
  end

  def standard_deviation_age
    get_result = StandardDeviation.new(@participant_ages)
    get_result.standard_deviation_result
  end
end