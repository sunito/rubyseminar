require 'fox16'
include Fox
theApp = FXApp.new
theMainWindow = FXMainWindow.new(theApp, "Hello")
theButton = FXButton.new(theMainWindow, "Hello, World!")
theButton.tipText = "Push Me!"
theButton.connect(SEL_COMMAND) { exit }
FXToolTip.new(theApp)
theApp.create
theMainWindow.show
theApp.run
