//
//  SortAlgorithmsTests.swift
//  SortAlgorithmsTests
//
//  Created by 纬洲 冯 on 1/6/16.
//  Copyright © 2016 dopcn. All rights reserved.
//

import XCTest

class SortAlgorithmsTests: XCTestCase {
    
    let x = Array(count: 5000, repeatedValue: 0).map { $0 + Int(arc4random_uniform(5000)) }
    
    func testMethodPerformance() {
        self.measureBlock { [unowned self] () -> Void in
            self.x.sort(<)
        }
    }
    
    func testBubbleSortPerformance() {
        self.measureBlock { [unowned self] in
            bubbleSort(self.x, by: <)
        }
    }
    
    func testInsertionSortPerformance() {
        self.measureBlock { [unowned self] in
            insertionSort(self.x, by: <)
        }
    }
    
    func testMergeSortPerformance() {
        self.measureBlock { [unowned self] in
            mergeSort(self.x, by: <)
        }
    }
    
    func testQuickSortPerformance() {
        self.measureBlock { [unowned self] () -> Void in
            quickSort(self.x, by: <)
        }
    }
    
    func testHeapSortPerformance() {
        self.measureBlock { [unowned self] () -> Void in
            heapSort(self.x, by: <)
        }
    }
    
    func testCountSortPerformance() {
        self.measureBlock { [unowned self] () -> Void in
            countSort(self.x, maxValue: 5000, by: <)
        }
    }
   
    func testQsortWrapperPerformance() {
        self.measureBlock { [unowned self] () -> Void in
            var tmp = self.x
            qsortWrapper(&tmp)
        }
    }
    
    func testMergesortWrapperPerformance() {
        self.measureBlock { [unowned self] () -> Void in
            var tmp = self.x
            mergesortWrapper(&tmp)
        }
    }
    
    func testHeapsortWrapperPerformance() {
        self.measureBlock { [unowned self] () -> Void in
            var tmp = self.x
            heapsortWrapper(&tmp)
        }
    }
    
    func testPsortWrapperPerformance() {
        self.measureBlock { [unowned self] () -> Void in
            var tmp = self.x
            psortWrapper(&tmp)
        }
    }
}
