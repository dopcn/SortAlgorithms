//
//  BubbleSort.swift
//  SortAlgorithms
//
//  Created by 纬洲 冯 on 1/22/16.
//  Copyright © 2016 dopcn. All rights reserved.
//

import Foundation

public func bubbleSort<T: Comparable>(_ items: [T], by compare: (T, T) -> Bool) -> [T] {
    guard items.count > 1 else {
        return items
    }
    var items = items
    let count = items.count
    for i in 0..<count-1 {
        var j = count - 1
        while j > i {
            if !compare(items[j-1], items[j]) {
                (items[j-1], items[j]) = (items[j], items[j-1])
            }
            j-=1
        }
    }
    return items
}
