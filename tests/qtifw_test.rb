require 'test/unit'
require_relative '../Formula/qtifw'

class QtifwTests < Test::Unit::TestCase
    
    Test::Unit.at_start do
      puts 'START: runs only once at start'
    end

    Test::Unit.at_exit do
      puts 'END: runs only once at end'
    end

    def setup
        puts "Runs before each test method"
    end

    def teardown
        puts "Runs after each test method"
    end    

    def test_default()

        assert_equal(2,2)
    end
end