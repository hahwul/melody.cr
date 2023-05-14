require "log"

module Melody
  VERSION = "0.1.0"

  class Logger
    @logger : String
    def initialize(logger)
      @logger = logger
    end
  end
end