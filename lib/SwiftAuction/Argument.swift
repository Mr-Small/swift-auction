//
// Argument.swift
// swift-auction
//
// Created by Mr-Small on 2016-05
//

// Argument's template struct.
public struct Argument<T> {

    private let defaultValue: T?

    public init(_ _defaultValue: T) {
        defaultValue = _defaultValue
    }

}

// Parser for arguments.
public final class ArgsParser {

    private let execute: String?

    public init(_ arguments: [String]) {
        execute = arguments.first
    }
}
