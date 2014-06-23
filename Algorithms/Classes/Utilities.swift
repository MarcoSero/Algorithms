//
//  Utilities.swift
//  Algorithms
//
//  Created by Marco Sero on 15/06/14.
//  Copyright (c) 2014 Marco Sero. All rights reserved.
//

struct Utilities {
  
  static func insertOrd<T: Comparable>(array: Array<T>, _ value: T) -> Array<T> {
    if array.isEmpty || value < array.head {
      return value ++ array
    }
    return array.head! ++ insertOrd(array.tail, value)
  }
  
  static func merge<T: Comparable>(arrayA: Array<T>, _ arrayB: Array<T>) -> Array<T> {
    if arrayA.isEmpty || arrayB.isEmpty {
      return arrayA ++ arrayB
    }
    if arrayA.head! < arrayB.head! {
      return arrayA.head! ++ merge(arrayA.tail, arrayB)
    }
    else {
      return arrayB.head! ++ merge(arrayA, arrayB.tail)
    }
  }
  
}