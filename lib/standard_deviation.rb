class StandardDeviation
  attr_reader :evaluation_array
  
  def initialize(evaluation_array)
    @evaluation_array = evaluation_array
  end

  def sum_array
    evaluation_array.sum
  end

  def evaluation_array_length
    @evaluation_array.length
  end

  def get_array_average
    return_average = sum_array.to_f / evaluation_array_length
    return_average.round(1)
  end

  def subtract_average_from_evaluation_array_integers
    @evaluation_array.map {|integer| (integer - get_array_average).round(1)}
  end

  def square_array_of_averages
    subtract_average_from_evaluation_array_integers.map {|integer| (integer ** 2).round(2)}
  end

  def sum_squared_array
    square_array_of_averages.sum
  end

  def subtract_summed_array_by_total_integers
    (sum_squared_array / evaluation_array_length).round(2)
  end

  def square_root_final_result_integer
    Math.sqrt(subtract_summed_array_by_total_integers).round(2)
  end

  def standard_deviation_result
    square_root_final_result_integer
  end
end
