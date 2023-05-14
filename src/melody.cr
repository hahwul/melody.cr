require "log"

module Melody
  VERSION = "0.1.0"
  Logger = Log
  Logger.setup(:info, Log::IOBackend.new(formatter: MelodyFormat))

  struct MelodyFormat < Log::StaticFormatter
    def run
      get_icon severity
      string " "
      message
    end
    
    def get_icon(severity)
      case severity
      when :debug
        string "🐛"
      when :info
        string "🎵"
      when :warn
        string "⚠️"
      when :error
        string "🚨"
      when :fatal
        string "💀"
      end
    end
  end

  def set_debug
    Logger.setup(:debug)
  end
end

