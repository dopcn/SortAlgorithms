//
//  SortAlgorithmsTests.swift
//  SortAlgorithmsTests
//
//  Created by 纬洲 冯 on 1/6/16.
//  Copyright © 2016 dopcn. All rights reserved.
//

import XCTest
//@testable import SortAlgorithms

class SortAlgorithmsTests: XCTestCase {
    
    let x = Array(count: 5000, repeatedValue: 0).map { (n) -> Int in
        return n + Int(arc4random_uniform(5000))
    }
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
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
    func testMethodPerformance() {
        self.measureBlock { [unowned self] () -> Void in
            _ = self.x.sort(<)
        }
    }
    
}
