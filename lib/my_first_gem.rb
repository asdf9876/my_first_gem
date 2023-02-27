# frozen_string_literal: true

require_relative "my_first_gem/version"

module MyFirstGem
  def self.greet(name)
    puts "Hello, #{name}"
  end
  class MyError < StandardError
    attr_reader :thing
    def initialize(msg = "My default error message", thing = 9/5r)
      @thing = Rational(thing)
      super(msg)
    end

    def recommend
      "You should switch to thing version #{@thing}"
    end
  end

  begin
    raise MyError.new("my message", "my thing")
  rescue => e
    puts e.thing
    puts e.recommend# "my thing"
  end
end
