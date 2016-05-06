//
// Executer.swift
// swift-auction
//
// Created by Mr-Small on 2016-05
//
import AppKit
import Alamofire

// Execute.
public final class Executer {

    public init() {

    }

    // Main execute.
    public func exec(argsParser: ArgsParser) {

        let provider = createProvider(argsParser)
        print(provider.name)

        // TODO deleteme for debug
        let url: String = "https://httpbin.org/get"
        request(url, ["foo" : "bar"])
        showDialog(url)
    }

    // Request at auction site.
    private func request(url: String, _ param: [String : String]) {

        Alamofire.request(.GET, url, parameters: param)
          .responseJSON { response in
            print(response.request)  // original URL request
            print(response.response) // URL response
            print(response.data)     // server data
            print(response.result)   // result of response serialization

            if let JSON = response.result.value {
                print("JSON: \(JSON)")
            }
          }
    }

    // Show request url in dialog.
    private func showDialog(url: String) {

      let dialog: NSAlert = NSAlert()
      dialog.messageText = "request : \(url)"
      dialog.runModal()
    }
}
