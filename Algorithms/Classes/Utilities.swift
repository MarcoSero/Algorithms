//
//  Utilities.swift
//  Algorithms
//
//  Created by Marco Sero on 15/06/14.
//  Copyright (c) 2014 Marco Sero. All rights reserved.
//

struct Utilities {
  
  static func insertOrd<T: Comparable>(array: T[], _ value: T) -> T[] {
    if array.isEmpty || value < array.head {
      return value ++ array
    }
    return array.head! ++ insertOrd(array.tail, value)
  }
  
  static func merge<T: Comparable>(arrayA: T[], _ arrayB: T[]) -> T[] {
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