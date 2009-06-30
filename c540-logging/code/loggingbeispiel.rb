require 'logger'
log = Logger.new(STDOUT)
log.level = Logger::WARN

log.debug("Created logger")
log.info("Program started")
log.warn("Nothing to do!")

begin
  3.downto(0) do |i|
    log.debug("dividing by #{i}")
    a = 10 / i
  end
rescue => err
  log.fatal("Caught exception; exiting")
  log.fatal(err)
end

