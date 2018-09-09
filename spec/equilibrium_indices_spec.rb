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
end
