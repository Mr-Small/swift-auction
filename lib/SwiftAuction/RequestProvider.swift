//
// RequestProvider.swift
// swift-auction
//
// Created by Mr-Small on 2016-04
//

// Provider for request url of auction site api.
public protocol RequestProvider {

    // Name of auction site.
    var name: String { get }

    // Base url of auction site api.
    var url: String { get }

    // Get url of auction site infomation.
    func getInformationUrl() -> String

    // TODO and more...
}
