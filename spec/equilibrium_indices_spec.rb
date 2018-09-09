require_relative '../lib/equilibrium_indices'

describe EquilibriumIndices do
	describe '#find_indices' do
		context 'returns empty Array if input elements is less than 3' do

	    subject{ EquilibriumIndices.find_indices(array) }

			context 'Input as empty array' do
				let(:array){ [] }

			  it 'should return empty array' do
			  	is_expected.to eq []
			  end
		  end

		  context 'Input has two element_to_s' do
				let(:array){ [-9, 10] }

			  it 'should return empty array' do
			  	is_expected.to eq []
			  end
		  end
	  end
  end

  describe '.sum_of_first_n' do
  	let(:array) { [1, 2, 3, 4, 5] }
  	let(:index) { 3 }
  	let(:expected_sum) { 6 }

    it 'returns sum of first n elements' do
      expect(EquilibriumIndices.sum_of_first_n(array, index)).to eq(expected_sum)
    end
  end

  describe '.sum_of_last_n' do
  	let(:array) { [1, 2, 3, 4, 5] }
  	let(:index) { 3 }
  	let(:expected_sum) { 12 }

    it 'returns sum of first n elements' do
      expect(EquilibriumIndices.sum_of_last_n(array, index)).to eq(expected_sum)
    end
  end
end
