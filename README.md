# Equilibrium Indices and Reverse Number

### Setup

* git clone git@github.com:tbagchi85/equilibrium_indices.git
* bundle install

### Equilibrium Indices

This is a function in Ruby to find equilibrium indices of an array.

There is a `EquilibriumIndices` class. There is a `find_indices` method, which will find equilibrium indices from that array. If no index is found then it will return `empty array`.

Example: EquilibriumIndices.find_indices([-7, 1, 5, 2, -4, 3, 0])

Output:- [3, 6]

#### To run Rspec

rspec spec/equilibrium_indices_spec.rb

#### To run the code

* open irb
* $> load 'lib/equilibrium_indices.rb'
* $> EquilibriumIndices.find_indices([-7, 1, 5, 2, -4, 3, 0])
