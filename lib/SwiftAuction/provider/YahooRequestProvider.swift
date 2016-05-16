//
// YahooRequestProvider.swift
// swift-auction
//
// Created by Mr-Small on 2016-04
//

// Provider for request url of yahoo auction site api.
public final class YahooRequestProvider : RequestProvider {

    // Id of auction site.
    public let id: String = ""

    // Name of auction site.
    public let name: String = "yahoo"

    // Base url of auction site.
    public let url: String = "http://auctions.yahooapis.jp/AuctionWebService/V2/json/"

    // Action to auction size.
    public var action: String = ""

    // Get request url of auction site.
    public func getRequestUrl() -> String {
        // TODO set url
        return url + ""
    }
}
