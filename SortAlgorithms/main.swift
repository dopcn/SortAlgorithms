//
//  main.swift
//  SortAlgorithms
//
//  Created by 纬洲 冯 on 1/6/16.
//  Copyright © 2016 dopcn. All rights reserved.
//

import Foundation

let x = Array(repeating: 0, count: 101).map { $0 + Int(arc4random_uniform(100)) }

print("x is \n \(x)")

let y = x.sorted(by: <)

print("y is \n \(y)")

//let x1 = bubbleSort(x, by: <)
//
//print("x1 is \n \(x1)")
//print("x1 equals y is \(x1==y)")
//
//let x2 = insertionSort(x, by: <)
//
//print("x2 is \n \(x2)")
//print("x2 equals y is \(x2==y)")
//
//let x3 = mergeSort(x, by: <)
//
//print("x3 is \n \(x3)")
//print("x3 equals y is \(x3==y)")

//let x4 = quickSort(x, by: <)
//var x4 = x

//qsortWrapper(&x4)
//print("x4 is \n \(x4)")
//print("x4 equals y is \(x4==y)")

//let x5 = heapSort(x, by: <)
//
//print("x5 is \n \(x5)")
//print("x5 equals y is \(x5==y)")
//
//let x6 = countSort(x, maxValue: 100, by: <)
//
//print("x6 is \n \(x6)")
//print("x6 equals y is \(x6==y)")
