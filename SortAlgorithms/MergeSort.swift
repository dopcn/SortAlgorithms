//
//  MergeSort.swift
//  SortAlgorithms
//
//  Created by 纬洲 冯 on 1/23/16.
//  Copyright © 2016 dopcn. All rights reserved.
//

import Foundation

public func mergeSort<T: Comparable>(items: [T], @noescape by compare: (T, T) -> Bool) -> [T] {
    func merge(left left: [T], right: [T], @noescape by compare: (T, T) -> Bool) -> [T] {
        var result = [T]()
        var l = 0, r = 0
        while l < left.count || r < right.count {
            if r == right.count || (l < left.count && compare(left[l], right[r])) {
                result.append(left[l])
                l+=1
            } else {
                result.append(right[r])
                r+=1
            }
        }
        return result
    }
    var items = items
    if items.count < 2 {
        return items
    } else if items.count == 2 {
        if !compare(items[0], items[1]) {
            (items[0], items[1]) = (items[1], items[0])
        }
        return items
    } else {
        let middle = items.count/2
        let left = mergeSort(Array(items[0..<middle]), by: compare)
        let right = mergeSort(Array(items[middle..<items.count]), by: compare)
        return merge(left: left, right: right, by: compare)
    }
}