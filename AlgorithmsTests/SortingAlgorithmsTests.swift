//
//  AlgorithmsTests.swift
//  AlgorithmsTests
//
//  Created by Marco Sero on 14/06/14.
//  Copyright (c) 2014 Marco Sero. All rights reserved.
//

import Quick
import Nimble
import Algorithms

class SortingAlgorithmsSpec: QuickSpec {
  override func spec() {
    describe("sorting algorithms") {

      var unsortedArray: [Int]?
      var sortedArray: [Int]?
      
      context("when the array is not empty and not ordered") {
        
        beforeEach {
          unsortedArray = [3,5,7,43,7,8,6,43,34,2,12,4,4,6,8,99,3,2,1,4,6,8,0,6,5,4,3,2]
          sortedArray = [0,1,2,2,2,3,3,3,4,4,4,4,5,5,6,6,6,6,7,7,8,8,8,12,34,43,43,99]
        }
        
        it("can be ordered with insertionsort") {
          let finalArray = Algorithms.insertionsort(unsortedArray!)
          expect(finalArray).to.equal(sortedArray!)
        }
        
        it("can be ordered with mergesort") {
          let finalArray = Algorithms.mergesort(unsortedArray!)
          expect(finalArray).to.equal(sortedArray!)
        }
        
        it("can be ordered with quicksort") {
          let finalArray = Algorithms.quicksort(unsortedArray!)
          expect(finalArray).to.equal(sortedArray!)
        }
      }
      
      context("when the array is empty") {
        
        beforeEach {
          unsortedArray = []
          sortedArray = []
        }
        
        it("can be ordered with insertionsort") {
          let finalArray = Algorithms.insertionsort(unsortedArray!)
          expect(finalArray).to.equal(sortedArray!)
        }
        
        it("can be ordered with mergesort") {
          let finalArray = Algorithms.mergesort(unsortedArray!)
          expect(finalArray).to.equal(sortedArray!)
        }
        
        it("can be ordered with quicksort") {
          let finalArray = Algorithms.quicksort(unsortedArray!)
          expect(finalArray).to.equal(sortedArray!)
        }
      }
      
      context("when the array has only one element") {
        
        beforeEach {
          unsortedArray = [1]
          sortedArray = [1]
        }
        
        it("insertionsort returns an empty array") {
          let finalArray = Algorithms.insertionsort(unsortedArray!)
          expect(finalArray).to.equal(sortedArray!)
        }
        
        it("mergesort returns an empty array") {
          let finalArray = Algorithms.mergesort(unsortedArray!)
          expect(finalArray).to.equal(sortedArray!)
        }
        
        it("quicksort returns an empty array") {
          let finalArray = Algorithms.quicksort(unsortedArray!)
          expect(finalArray).to.equal(sortedArray!)
        }
      }
      
    }
  }
}