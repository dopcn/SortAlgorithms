//
//  SortAlgorithmsTests.swift
//  SortAlgorithmsTests
//
//  Created by 纬洲 冯 on 1/6/16.
//  Copyright © 2016 dopcn. All rights reserved.
//

import XCTest

class SortAlgorithmsTests: XCTestCase {
    
    let x = Array(repeating: 0, count: 500).map { $0 + Int(arc4random_uniform(500)) }
    
    func testMethodPerformance() {
        self.measure { [unowned self] () -> Void in
            self.x.sorted(by: <)
        }
    }
    
    func testBubbleSortPerformance() {
        self.measure { [unowned self] in
            bubbleSort(self.x, by: <)
        }
    }
    
    func testInsertionSortPerformance() {
        self.measure { [unowned self] in
            insertionSort(self.x, by: <)
        }
    }
    
    func testMergeSortPerformance() {
        self.measure { [unowned self] in
            mergeSort(self.x, by: <)
        }
    }
    
    func testQuickSortPerformance() {
        self.measure { [unowned self] () -> Void in
            quickSort(self.x, by: <)
        }
    }
    
    func testHeapSortPerformance() {
        self.measure { [unowned self] () -> Void in
            heapSort(self.x, by: <)
        }
    }
    
    func testCountSortPerformance() {
        self.measure { [unowned self] () -> Void in
            countSort(self.x, maxValue: 5000)
        }
    }
   
//    func testQsortWrapperPerformance() {
//        self.measure { [unowned self] () -> Void in
//            var tmp = self.x
//            qsortWrapper(&tmp)
//        }
//    }
//    
//    func testMergesortWrapperPerformance() {
//        self.measure { [unowned self] () -> Void in
//            var tmp = self.x
//            mergesortWrapper(&tmp)
//        }
//    }
//    
//    func testHeapsortWrapperPerformance() {
//        self.measure { [unowned self] () -> Void in
//            var tmp = self.x
//            heapsortWrapper(&tmp)
//        }
//    }
//    
//    func testPsortWrapperPerformance() {
//        self.measure { [unowned self] () -> Void in
//            var tmp = self.x
//            psortWrapper(&tmp)
//        }
//    }
}
