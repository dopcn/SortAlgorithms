//
//  InsertionSort.swift
//  SortAlgorithms
//
//  Created by 纬洲 冯 on 1/22/16.
//  Copyright © 2016 dopcn. All rights reserved.
//

import Foundation

public func insertionSort<T: Comparable>(_ items: [T], by compare: (T, T) -> Bool) -> [T] {
    guard items.count > 1 else {
        return items
    }
    var items = items
    let count = items.count
    for i in 1..<count {
        let key = items[i]
        var j = i - 1
        while j >= 0 && !compare(items[j], key) {
            items[j+1] = items[j]
            j-=1
        }
        items[j+1] = key
    }
    return items
}
