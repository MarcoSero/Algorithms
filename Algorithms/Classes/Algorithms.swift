//
//  Algorithms.swift
//  Algorithms
//
//  Created by Marco Sero on 14/06/14.
//  Copyright (c) 2014 Marco Sero. All rights reserved.
//
import Swiftener

struct Algorithms {
  
  static func binarySearch<T: Comparable>(array: [T], value: T) -> Bool {
    let i = Int(array.count / 2)
    switch (array, value) {
    case ([], _):
      return false
    case let (a, x) where x < a[i]:
      return binarySearch(a.split.0, value: x)
    case let (a, x) where x > a[i]:
      return binarySearch(a.split.1, value: x)
    default:
      return true
    }
  }
  
  static func fibonacci(n: Int) -> Int {
    if n == 0 || n == 1 {
      return n
    }
    return fibonacci(n - 1) + fibonacci(n - 2)
  }
  
  static func insertionsort<T: Comparable>(a: [T]) -> [T] {
    if let x = a.head {
      return Utilities.insertOrd(insertionsort(a.tail), x)
    }
    return []
  }
  
  static func mergesort<T: Comparable>(a: [T]) -> [T] {
    if a.count <= 1 {
      return a
    }
    return Utilities.merge(mergesort(a.split.0), mergesort(a.split.1))
  }
  
  static func quicksort<T: Comparable>(a: [T]) -> [T] {
    if let x = a.head {
      return quicksort(a.tail.filter{ $0 < x } ) ++ x ++ quicksort(a.tail.filter { $0 >= x })
    }
    return []
  }
  
}



