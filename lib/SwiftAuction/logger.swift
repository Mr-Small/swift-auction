//
// Logger.swift
// swift-auction
//
// Created by Mr-Small on 2016-5
//

import Foundation

class Logger{
  class func debud(
    message: String,
    function: String = #function,
    file: String = #file,
    line: Int = #line) { Logger.write("[DECUG]",message: message, function: function, file: file, line: line )};
  class func info(
    message: String,
    function: String = #function,
    file: String = #file,
    line: Int = #line) { Logger.write("[INFO]",message: message, function: function, file: file, line: line )};
  class func warnig(
    message: String,
    function: String = #function,
    file: String = #file,
    line: Int = #line) { Logger.write("WARNING",message: message, function: function, file: file, line: line)};
  class func error(
    message: String,
    function: String = #function,
    file: String = #file,
    line: Int = #line) { Logger.write("ERROR",message: message, function: function, file: file, line: line)};
  class func write(
    loglevel: String,
    message: String,
    function: String,
    file: String,
    line: Int) {

      let now = NSDate() //Display of the current date and time
      let dataFormatter = NSDateFormatter()
      dataFormatter.locale = NSLocale(localeIdentifier: "ja_JP")
      dataFormatter.timeStyle = .MediumStyle
      dataFormatter.dateStyle = .MediumStyle
      //println(dateFormatter.stringFromDate(now))

      let nowdate = dataFormatter.stringFromDate(now)

      var filename = file
      if let match = filename.rangeOfString("[^/]*$", options: .RegularExpressionSearch) {
        filename = filename.substringWithRange(match)
      }
      print("\(loglevel) => \"\(message)\" \(nowdate) Line:\(line) \(function) @\(filename)")
    }
}
