//
// Executer.swift
// swift-auction
//
// Created by Mr-Small on 2016-05
//
import Alamofire

// Execute.
public final class Executer {

    public init() {

    }

    // Main execute.
    public func exec(argsParser: ArgsParser) {

        let provider = createProvider(argsParser)
        print(provider.name)

    }

    // Request at auction site.
    private func request(url: String) {

        Alamofire.request(.GET, url)
    }
}
