require_relative '../lib/equilibrium_indices'

describe EquilibriumIndices do
	describe '#find_indices' do
		context 'returns empty Array if input elements is less than 3' do

	    subject{ EquilibriumIndices.find_indices(array) }

			context 'Input as empty array' do
				let(:array) { [] }

			  it 'should return empty array' do
			  	is_expected.to eq []
			  end
		  end

		  context 'Input has two element_to_s' do
				let(:array) { [-9, 10] }

			  it 'should return empty array' do
			  	is_expected.to eq []
			  end
		  end

		  describe 'multiple array elements' do
		    subject{ EquilibriumIndices.find_indices(array) }

			  context 'equilibrium indices found' do
					let(:array) { [-7, 1, 5, 2, -4, 3, 0] }
					let(:expected_indices) { [3, 6] }

			    it 'returns an instance of array' do
	          is_expected.to be_an_instance_of(Array)
			    end

				  it 'returns expected array' do
				  	is_expected.to eq expected_indices
				  end
			  end

			  context 'equilibrium indices not found' do
					let(:array) { [1, 2, 3, 4, 5, 6] }
					let(:expected_indices) { [] }

			    it 'returns an instance of array' do
	          is_expected.to be_an_instance_of(Array)
			    end

				  it 'returns expected array' do
				  	is_expected.to eq expected_indices
				  end
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
