//
//  QuickSort.swift
//  SortAlgorithms
//
//  Created by 纬洲 冯 on 1/23/16.
//  Copyright © 2016 dopcn. All rights reserved.
//

import Foundation

public func quickSort<T: Comparable>(items: [T], @noescape by compare: (T, T) -> Bool) -> [T] {
    guard items.count > 1 else {
        return items
    }
    var items = items
    
    func partition(inout items: [T], left: Int, right: Int, @noescape by compare: (T, T) -> Bool) -> Int {
        let random = left + Int(arc4random_uniform(UInt32(right-left)))
        let key = items[random]
        (items[left], items[random]) = (items[random], items[left])
        var j = left
        for i in (left+1)...right {
            if compare(items[i], key) {
                j+=1
                if i != j {
                    (items[i], items[j]) = (items[j], items[i])
                }
            }
        }
        (items[left], items[j]) = (items[j], items[left])
        return j
    }
    func quickSortIter(inout items: [T], left: Int, right: Int, @noescape by compare: (T, T) -> Bool) {
        if left < right {
            let middle = partition(&items, left: left, right: right, by: compare)
            quickSortIter(&items, left: left, right: middle-1, by: compare)
            quickSortIter(&items, left: middle+1, right: right, by: compare)
        }
    }
    
    quickSortIter(&items, left: 0, right: items.count-1, by: compare)
    return items
}