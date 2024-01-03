#!/bin/bash

# Prompt user to enter the package name
read -p "Enter package name: " package_name

# Replace spaces with underscores in the package name
package_name="${package_name// /_}"

# Create a folder for the package (folder name will be 'PackageName.jl')
mkdir "${package_name}.jl"
cd "${package_name}.jl" || exit

# Create the src and test directories
mkdir src
mkdir test

# Create Project.toml and populate it with initial information
cat <<EOF > Project.toml
name = "$package_name"
uuid = "$(uuidgen)"
authors = ["Your Name <your@email.com>"]
version = "0.1.0"

[deps]
# Dependencies, if any, will be listed here

[compat]
julia = "1.6"  # Minimum Julia version required by the package
EOF

# Function to create modules
function create_module() {
    local module_name
    read -p "Enter module name without the extension .jl (or 'q' to finish): " module_name

    while [ "$module_name" != "q" ]; do
        # Create a new module file within the src directory
        touch src/"$module_name".jl
        
        # Populate the module file with a basic function definition
        cat <<EOF > src/"$module_name".jl
module $module_name

# Define a basic function (you can modify this part as needed)
function $module_name()
    println("This is $module_name")
end

end # module
EOF

        # Create a test file for the module
        touch test/test_$module_name.jl

        # Populate the test file with basic test cases
        cat <<EOF > test/test_$module_name.jl
using Test
using .\$module_name  # Load the module to be tested

# Define test cases for $module_name module
@testset "Test $module_name module" begin
    @testset "Example tests" begin
        # Add your test cases here
        @test true
    end
end
EOF

        # Prompt for the next module name or 'q' to exit
        read -p "Enter another module name (or 'q' to exit): " module_name
    done
}

# Call the function to create modules
create_module

# Optionally, create a README.md file
touch README.md

# Output success message
echo "$package_name package structure, Project.toml, and modules created successfully."
