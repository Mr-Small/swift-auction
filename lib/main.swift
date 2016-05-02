//
// main.swift
// swift-auction
//
// Created by Mr-Small on 2016-05
//


// Parse arguments.
let parser = ArgsParser(Process.arguments)

// Run execute.
let executer = Executer()
executer.exec(parser)
