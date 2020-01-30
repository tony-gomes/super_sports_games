require_relative 'test_helper'
require './lib/standard_deviation.rb'

class StandardDeviationTest < MiniTest::Test

  def setup
    evaluation_array = [24, 30, 18, 20, 41]
    @standard_deviation = StandardDeviation.new(evaluation_array)
  end

  def test_standard_deviation_exists_with_attributes
    assert_instance_of StandardDeviation, @standard_deviation
    assert_equal [24, 30, 18, 20, 41], @standard_deviation.evaluation_array
  end

  def test_standard_deviation_can_sum_integers_in_evaluation_array
    assert_equal 133, @standard_deviation.sum_array
  end

  def test_standard_deviation_can_get_evaluation_array_length
    assert_equal 5, @standard_deviation.evaluation_array_length
  end

  def test_standard_devation_can_get_average_of_evaluation_array
    assert_equal 26.6, @standard_deviation.get_array_average
  end

  def test_standard_devation_can_subtract_average_from_evaluation_array_integers
    assert_equal [-2.6, 3.4, -8.6, -6.6, 14.4], @standard_deviation.subtract_average_from_evaluation_array_integers
  end

  def test_standard_devation_can_square_array_of_averages
     results_array = [6.76, 11.56, 73.96, 43.56, 207.36]
    assert_equal results_array, @standard_deviation.square_array_of_averages
  end

  def test_standard_deviation_can_sum_squared_array
    assert_equal 343.2, @standard_deviation.sum_squared_array
  end

  def test_standard_deviation_can_subtract_summed_array_by_total_integers
    assert_equal 68.64, @standard_deviation.subtract_summed_array_by_total_integers
  end

  def test_standard_devation_can_get_square_root_final_result_integer
    assert_equal 8.28, @standard_deviation.square_root_final_result_integer
  end

  def test_standard_deviation_returns_final_result
    assert_equal 8.28, @standard_deviation.standard_deviation_result
  end
end
