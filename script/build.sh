#!/usr/bin/env bash

mkdir build

swiftc lib/main.swift \
       lib/SwiftAuction/Argument.swift \
       lib/SwiftAuction/Executer.swift \
       lib/SwiftAuction/RequestProvider.swift \
       lib/SwiftAuction/Provider/YahooRequestProvider.swift \
       -o build/out.swift
