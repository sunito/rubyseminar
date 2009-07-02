# encoding: utf-8
require 'fox16'

include Fox

theApp = FXApp.new

theMainWindow = FXMainWindow.new(theApp, "Hello")
FXButton.new(theMainWindow, "Button") # <-
theApp.create

theMainWindow.show

theApp.run
