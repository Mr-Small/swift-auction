//
// YahooRequestProvider.swift
// swift-auction
//
// Created by Mr-Small on 2016-04
//

// Provider for request url of yahoo auction site api.
public final class YahooRequestProvider : RequestProvider {

    // Name of auction site.
    public let name: String = "yahoo"

    // TODO set url
    public let url: String = "http://"

    // Get url of yahoo auction site infomation.
    public func getInformationUrl() -> String {
        // TODO set url
        return url + ""
    }
}
