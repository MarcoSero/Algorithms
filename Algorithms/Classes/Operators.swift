//
//  Operators.swift
//  Algorithms
//
//  Created by Marco Sero on 15/06/14.
//  Copyright (c) 2014 Marco Sero. All rights reserved.
//

/// array concatenation
operator infix ++ { associativity left precedence 140 }

func ++ <T>(left: T[], right: T[]) -> T[] {
  var a = Array<T>(left)
  a += right
  return a
}

func ++ <T>(left: T, right: T[]) -> T[] {
  return [left] ++ right
}

func ++ <T>(left: T[], right: T) -> T[] {
  return left ++ [right]
}

/// array pattern matching
func ~= <T: Comparable>(left: T[], right: T[]) -> Bool {
  return left == right
}