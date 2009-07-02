require 'fox16'

include Fox

theApp = FXApp.new

theMainWindow = FXMainWindow.new(theApp, "Hello")
theButton = FXButton.new(theMainWindow, "Button")
theButton.connect(SEL_COMMAND) do 
                   |sender, selector, data|
  exit
end
theApp.create

theMainWindow.show

theApp.run
