//
// Argument.swift
// swift-auction
//
// Created by Mr-Small on 2016-05
//

// Enum provider.
public enum Providers : String {
  case Yahoo = "yahoo"
  case Rakuten = "rakuten"
}

// Argument's template struct.
public struct Argument<T> {

    // Arguent default value.
    private let defaultValue: T?
    // Argument value.
    private var value: T?

    public init(_ _defaultValue: T) {
        defaultValue = _defaultValue
    }

    // Set argument value.
    mutating public func setValue(v: T) {
        value = v
    }

    // Get argument value.
    // If argument value nil return default value.
    public func getValue() -> T? {
        return value ?? defaultValue
    }
}

// Parser for arguments.
// - : exec path.
// -p : specfic provider.
// -a : Action use api.
public final class ArgsParser {

    // Execute path.
    private let execute: String?
    // Provider value.
    private var argProvider: Argument<String> = Argument<String>("yahoo")
    // Action value.
    private var argAction: Argument<String> = Argument<String>("info")

    // Initialize.
    public init(_ arguments: [String]) {
        execute = arguments.first
        parse(arguments)
    }

    // Parse arguments.
    private func parse(arguments: [String]) {

        var provider: Bool = false
        var action: Bool = false

        for i in 1..<arguments.count {
            let arg = arguments[i]
            switch arg {
              case "-p":
              // Specfic provider. default yahoo.
              provider = true
              continue

              case "-a":
              // Action use api.
              action = true
              continue

              default:
                break // do nothing.
            }
            // Set provider.
            if provider {
              argProvider.setValue(arg)
              provider = false
              continue
            }
            // Set Action.
            if action {
              argAction.setValue(arg)
              action = false
              continue
            }
        }
    }

    // Get provider.
    public func getProvider() -> String {
        return argProvider.getValue()!
    }

    // Get Action.
    public func getAction() -> String {
        return argAction.getValue()!
    }
}

extension Executer {

    // Create request provider by arguments.
    public func createProvider(argsParser: ArgsParser) -> RequestProvider {

        var provider: RequestProvider?

        switch argsParser.getProvider() {
          case "yahoo":
            provider = YahooRequestProvider()
          default:
            Logger.warnig("Invalid argument. \(argsParser.getProvider())")
        }

        if var p = provider {
          p.action = argsParser.getAction()
        }
        return provider!
    }
}
