//
// Actions.swift
// swift-auction
//
// Created by Mr-Small on 2016-05
//

// Enum action.
public enum Actions : String {
  case None = ""
  case Category = "Category"
  case Stock = "Stock"
  case SellingList = "SellingList"
  case Search = "Search"
  case Item = "Item"
  case BidHistory = "BidHistory"

  // String -> Actions.
  static func toAction(value: String) -> Actions? {
    return Actions(rawValue: value)
  }
}
