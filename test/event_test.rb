require_relative 'test_helper'
require './lib/standard_deviation.rb'
require './lib/event.rb'

class EventTest < MiniTest::Test

  def setup
    @new_event = Event.new('Boxing', [24, 30, 18, 20, 41])
  end

  def test_event_exists_with_attributes
    assert_instance_of Event, @new_event
    assert_equal 'Boxing', @new_event.event_name
    assert_equal [24, 30, 18, 20, 41], @new_event.participant_ages
  end

  def test_event_getter_method_name?
    assert_equal 'Boxing', @new_event.name?
  end

  def test_event_getter_method_ages?
    assert_equal [24, 30, 18, 20, 41], @new_event.ages?
  end

  def test_event_max_age_method
    assert_equal 41, @new_event.max_age
  end

  def test_event_min_age_method
    assert_equal 18, @new_event.min_age
  end

  def test_event_average_age_method
    assert_equal 26.6, @new_event.average_age
  end

  def test_event_can_get_standard_deviation_age
    assert_equal 8.28, @new_event.standard_deviation_age
  end
end