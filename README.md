Overview:
  This project implements a String Calculator using Test-Driven Development (TDD) practices in Ruby on Rails. The implementation follows a step-by-step approach, where each feature is developed by first writing a test and then writing the minimal code to pass that test.

Requirements:
The String Calculator performs arithmetic operations on a string input according to the following rules:

  1- An empty string returns 0.
  2- A single number returns the number itself.
  3- Two numbers separated by a comma return the sum.
  4- An unknown number of numbers separated by commas return the sum.
  5- New lines can be used as delimiters alongside commas.
  6- Custom delimiters can be defined.
  7- Negative numbers are not allowed, and an exception is raised if they are used.

Versions:
  Ruby: 3.1.0p0 (2021-12-25 revision fb4df44d16) [x86_64-linux]
  Rails: 7.0.8.4
  Database: Postgresql

Setup:
  1- Clone the repository:
    git clone https://github.com/sohail133/string_calculator.git
    cd string_calculator

  2- Install dependencies:
    bundle install

  3- Set up RSpec:
    rails generate rspec:install

Implementation Details:
  Step 1: Return 0 for an Empty String Input
    Code: Implemented in app/models/string_calculator.rb.
    Test: Defined in spec/models/string_calculator_spec.rb.
    Commit Message: Return 0 for empty string input.

  Step 2: Return the Number Itself for a Single Number Input
    Code: Updated in app/models/string_calculator.rb.
    Test: Updated in spec/models/string_calculator_spec.rb.
    Commit Message: Return the number itself for single number input.

  Step 3: Sum Two Numbers Separated by a Comma
    Code: Updated in app/models/string_calculator.rb.
    Test: Updated in spec/models/string_calculator_spec.rb.
    Commit Message: Sum of two numbers separated by a comma.

  Step 4: Handle an Unknown Amount of Numbers
    Code: Updated in app/models/string_calculator.rb.
    Test: Updated in spec/models/string_calculator_spec.rb.
    Commit Message: Sum of an unknown amount of numbers.

  Step 5: Handle New Lines as Delimiters Along with Commas
    Code: Updated in app/models/string_calculator.rb.
    Test: Updated in spec/models/string_calculator_spec.rb.
    Commit Message: Handle new lines as delimiters.

  Step 6: Support Custom Delimiters
    Code: Updated in app/models/string_calculator.rb.
    Test: Updated in spec/models/string_calculator_spec.rb.
    Commit Message: Support custom delimiters.

  Step 7: Raise an Exception for Negative Numbers
    Code: Updated in app/models/string_calculator.rb.
    Test: Updated in spec/models/string_calculator_spec.rb.
    Commit Message: Raise exception for negative numbers.

Running Tests:
  run the test suite using RSpec:
  $ bundle exec rspec

Commit History
  Each step in the development process has been committed with a descriptive message that reflects the TDD process. This ensures traceability and adherence to best practices.
