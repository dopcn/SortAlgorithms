//
//  CountSort.swift
//  SortAlgorithms
//
//  Created by 纬洲 冯 on 1/23/16.
//  Copyright © 2016 dopcn. All rights reserved.
//

import Foundation

public func countSort(_ items: [Int], maxValue: Int) -> [Int] {
    guard items.count > 1 else {
        return items
    }
    var bridge = Array(repeating: 0, count: maxValue+1)
    for item in items {
        bridge[item] += 1
    }
    for i in 1..<bridge.count {
        bridge[i] += bridge[i-1]
    }
    var result = Array(repeating: 0, count: items.count)
    for item in items {
        bridge[item] -= 1
        result[bridge[item]] = item
    }
    return result
}
