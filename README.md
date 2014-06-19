# Algorithms

Small collection of simple algorithms written in Swift.

## Purpose

Trying to get used of new Swift's syntax and constructs, whilst brushing up my functional programming and algorithms.

## Notes

I tried to keep the syntax clean. I took some inspiration from Haskell's ":" (column) operator redefining a similar one to concatenate arrays:

    operator infix ++ { associativity left precedence 140 }
    func ++ <T>(left: Array<T>, right: Array<T>) -> Array<T> {
      var a = Array<T>(left)
      a += right
      return a
    }

With this operator a **almost-one-liner** quicksort is possible

    static func quicksort<T: Comparable>(a: Array<T>) -> Array<T> {
      if let x = a.head {
        return quicksort(a.tail.filter{ $0 < x } ) ++ [x] ++ quicksort(a.tail.filter { $0 >= x })
      }
      return []
    }

I said almost :)

I also tried to use the Swift's new `switch - where` construct to mimic Haskell's pattern matching. I must say I would really love to get a similar pattern matching in Swift.  
This is not great:

    switch (array, value) {
    case let (a, x) where a.isEmpty:
      return false
    case let (a, x) where a.count == 1:
      return a.head! == x
    case let (a, x) where x < a[i]:
      return binarySearch(a.split.0, value: x)
    case let (a, x) where x > a[i]:
      return binarySearch(a.split.1.tail, value: x)
    default:
      return true
    }


## Tests

I used [Quick](https://github.com/modocache/Quick) as testing framework.