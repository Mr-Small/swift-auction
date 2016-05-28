//
// RequestProvider.swift
// swift-auction
//
// Created by Mr-Small on 2016-04
//

// Provider for request url of auction site api.
public protocol RequestProvider {

    // Id of auction site.
    var id: String { get }

    // Name of auction site.
    var name: String { get }

    // Base url of auction site api.
    var url: String { get }

    // Action of provider.
    var action: String { set get }

    // User params.
    var userParams: String { set get }

    // Get request url of auction site.
    func getRequestUrl() -> String

    // Get action enum.
    func getAction() -> Actions

    // TODO and more...
}
