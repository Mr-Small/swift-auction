//
// main.swift
// swift-auction
//
// Created by Mr-Small on 2016-05
//

Logger.info("swift-auction start.")

// Parse arguments.
let parser = ArgsParser(Process.arguments)

// Run execute.
let executer = Executer()
executer.exec(parser)

Logger.info("swift-auction finish.")
