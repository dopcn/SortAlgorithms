//
//  HeapSort.swift
//  SortAlgorithms
//
//  Created by 纬洲 冯 on 1/23/16.
//  Copyright © 2016 dopcn. All rights reserved.
//

import Foundation

public func heapSort<T: Comparable>(_ items: [T], by compare: (T, T) -> Bool) -> [T] {
    guard items.count > 1 else {
        return items
    }
    var heap = MaxHeap(items: items), i = items.count - 1
    while i > 0 {
        (heap.items[0], heap.items[i]) = (heap.items[i], heap.items[0])
        heap.heapSize -= 1
        heap.maxHeapify(0)
        i -= 1
    }
    return heap.items
}
