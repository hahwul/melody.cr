require "log"
require "../src/melody.cr"

logger = Melody::Logger
logger.info {"Hello World"}
logger.warn {"Hello World"}