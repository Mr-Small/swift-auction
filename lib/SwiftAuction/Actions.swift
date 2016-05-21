//
// Actions.swift
// swift-auction
//
// Created by Mr-Small on 2016-05
//

// Enum action.
public enum Actions : String {
  case Category = "Category"
  case Stock = "Stock"
  case SellingList = "SellingList"
  case Search = "Search"
  case Item = "Item"
  case BidHistory = "BidHistory"

  // String -> Actions.
  func toAction(value: String) -> Actions {

    switch(value) {
      case "Stock":
        return .Stock
      case "SellingList":
        return .SellingList
      case "Search":
        return .Search
      case "Item":
        return .Item
      case "BidHistory":
        return .BidHistory
      default:
        return .Category // Default value.
    }
  }
}
