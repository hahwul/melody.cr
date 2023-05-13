require "logger"

module Melody
  VERSION = "0.1.0"

  class Melody
    @logger = nil
    
    def initialize()
      @logger = Logger.new(STDOUT)
    end
  end
end