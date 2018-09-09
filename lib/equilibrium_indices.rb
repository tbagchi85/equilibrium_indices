class EquilibriumIndices
  def self.find_indices(array=[])
    return [] if array.length <= 2
  end

  protected

  def self.sum_of_first_n(array, index)
    array.first(index).sum
  end
end
