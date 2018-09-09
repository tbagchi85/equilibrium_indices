class EquilibriumIndices
  def self.find_indices(array=[])
    indices = []

    return [] if array.length <= 2

    for i in 0..(array.length - 1)
      if sum_of_first_n(array, i) ==  sum_of_last_n(array, array.length - (i + 1))
      	indices << i
      end
    end

    indices
  end

  protected

  def self.sum_of_first_n(array, index)
    array.first(index).sum
  end

  def self.sum_of_last_n(array, index)
    array.last(index).sum
  end
end
