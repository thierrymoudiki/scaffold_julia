#!/bin/bash


# make it an executable 
# chmod +x create_calculator_package.sh
# then run
# ./create_calculator_package.sh


# Create a folder for the Calculator package
mkdir Calculator
cd Calculator || exit

# Create the src and test directories
mkdir src
mkdir test

# Create necessary files within the src directory
touch src/Calculator.jl
touch src/add.jl
touch src/subtract.jl

# Create necessary files within the test directory
touch test/runtests.jl

# Optionally, create a README.md file
touch README.md

# Populate files with initial code

# src/Calculator.jl
cat <<EOF > src/Calculator.jl
module Calculator

include("add.jl")
include("subtract.jl")

end # module
EOF

# src/add.jl
cat <<EOF > src/add.jl
function add(a, b)
    return a + b
end
EOF

# src/subtract.jl
cat <<EOF > src/subtract.jl
function subtract(a, b)
    return a - b
end
EOF

# test/runtests.jl
cat <<EOF > test/runtests.jl
using Test
using Calculator

# Test cases for add and subtract functions
@test add(2, 3) == 5
@test subtract(5, 2) == 3

# Additional test cases can be added here

# To run tests, execute this file or include it in a test suite
EOF

# Output success message
echo "Calculator package structure and initial code created successfully."
