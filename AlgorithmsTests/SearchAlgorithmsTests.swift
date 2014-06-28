//
//  SearchAlgorithmsTests.swift
//  Algorithms
//
//  Created by Marco Sero on 19/06/2014.
//  Copyright (c) 2014 Marco Sero. All rights reserved.
//

import Quick
import Nimble
import Algorithms

class SearchAlgorithmsSpec: QuickSpec {
  override func spec() {
    describe("search algorithms") {
      
      var sortedArray: Int[]?
      
      context("when the array is not empty") {
        
        beforeEach {
          sortedArray = [0,1,2,3,4,5,6,7,8,9,10]
        }
        
        it("should find an existing value with binarysearch") {
          let valueExists = Algorithms.binarySearch(sortedArray!, value: 2)
          expect(valueExists).to.beTrue()
        }
        
        it("should not find a non existing value with binarysearch") {
          let valueExists = Algorithms.binarySearch(sortedArray!, value: 3234)
          expect(valueExists).to.beFalse()
        }
        
      }
      
      context("when the array is empty") {
        
        beforeEach {
          sortedArray = []
        }
        
        it("should not find any values with binarysearch") {
          let valueExists = Algorithms.binarySearch(sortedArray!, value: 1)
          expect(valueExists).to.beFalse()
        }
      }
            
    }
  }
}