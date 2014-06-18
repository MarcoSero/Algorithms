//
//  Operators.swift
//  Algorithms
//
//  Created by Marco Sero on 15/06/14.
//  Copyright (c) 2014 Marco Sero. All rights reserved.
//

operator infix ++ { associativity left precedence 140 }
func ++ <T>(left: Array<T>, right: Array<T>) -> Array<T> {
  var a = Array<T>(left)
  a += right
  return a
}