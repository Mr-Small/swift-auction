#!/usr/bin/env bash

CARTHAGE=Carthage/Build/Mac

if [ -e build ]; then
  rm -rf build
  mkdir build
else
  mkdir build
fi

xcrun -sdk macosx swiftc -v \
       -F$CARTHAGE -Xlinker -rpath -Xlinker $CARTHAGE \
       lib/main.swift \
       lib/SwiftAuction/Providers.swift \
       lib/SwiftAuction/Actions.swift \
       lib/SwiftAuction/Argument.swift \
       lib/SwiftAuction/Executer.swift \
       lib/SwiftAuction/RequestProvider.swift \
       lib/SwiftAuction/Provider/YahooRequestProvider.swift \
       lib/SwiftAuction/logger.swift \
       -o build/SwiftAuction
