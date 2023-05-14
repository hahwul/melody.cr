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
      if severity.to_s.includes? "DEBUG"
        string "[D]"
      elsif severity.to_s.includes? "INFO"
        string "[I]"
      elsif severity.to_s.includes? "WARN"
        string "[W]"
      elsif severity.to_s.includes? "ERROR"
        string "[E]"
      elsif severity.to_s.includes? "FATAL"
        string "[F]"
      else
        string "[+]"
      end
    end
  end

  def set_debug
    Logger.setup(:debug)
  end

  def set_formatter(formatter)
    Logger.setup(:info, Log::IOBackend.new(formatter: formatter))
  end
end

