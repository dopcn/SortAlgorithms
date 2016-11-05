//
//  Heap.swift
//  SortAlgorithms
//
//  Created by 纬洲 冯 on 1/28/16.
//  Copyright © 2016 dopcn. All rights reserved.
//

import Foundation

protocol HeapType {
    associatedtype T
    var items: [T] { get set }
    var heapSize: Int { get set }
    func parent(_ i: Int) -> Int
    func left(_ i: Int) -> Int
    func right(_ i: Int) -> Int
}

extension HeapType {
    func parent(_ i: Int) -> Int {
        return i/2
    }
    
    func left(_ i: Int) -> Int {
        return i*2
    }
    
    func right(_ i: Int) -> Int {
        return i*2 + 1
    }
}

struct MaxHeap<T: Comparable>: HeapType {
    var items: [T]
    var heapSize: Int
    
    mutating func maxHeapify(_ i: Int) {
        let l = left(i), r = right(i)
        var largest = -1
        if l < heapSize && items[l] > items[i] {
            largest = l
        } else {
            largest = i
        }
        if r < heapSize && items[r] > items[largest] {
            largest = r
        }
        if largest != i {
            (items[largest], items[i]) = (items[i], items[largest])
            maxHeapify(largest)
        }
    }
    
    init(items: [T]) {
        self.items = items
        heapSize = items.count
        var i = items.count/2
        while i >= 0 {
            maxHeapify(i)
            i-=1
        }
    }
}

struct MinHeap<T: Comparable>: HeapType {
    var items: [T]
    var heapSize: Int
    
    mutating func minHeapify(_ i: Int) {
        let l = left(i), r = right(i)
        var smallest = -1
        if l < heapSize && items[l] < items[i] {
            smallest = l
        } else {
            smallest = i
        }
        if r < heapSize && items[r] < items[smallest] {
            smallest = r
        }
        if smallest != i {
            (items[smallest], items[i]) = (items[i], items[smallest])
            minHeapify(smallest)
        }       
    }
    
    init(items: [T]) {
        self.items = items
        heapSize = items.count
        var i = items.count/2
        while i >= 0 {
            minHeapify(i)
            i-=1
        }
    }
}

