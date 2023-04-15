# frozen_string_literal: true

SimpleCov.start do
  command_name "Minitest"
  add_filter "/.bundle/"
  add_filter "/vendor/"
  add_filter "/test/"
  coverage_dir "coverage"
  minimum_coverage 85
end
