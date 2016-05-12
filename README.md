# swift-auction
Analyze auction site data for swift.

## Description

Using the Web API of auction site, to get information.

## Build

```sh
$ carthage update
$ script/build.sh
```

## Usage

```sh
$ build/SwiftAuction -p <auction site> -a <action>
```

> auction site

Set the names of the following auction provider:

- yahoo
- rakuten

> sction

e.g.
```sh
$ build/SwiftAuction -p yahoo -a info
```

## Licence

MIT

## Author

[Mr-Small](https://github.com/Mr-Small)
