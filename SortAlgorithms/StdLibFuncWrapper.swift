//
//  StdLibFuncWrapper.swift
//  SortAlgorithms
//
//  Created by 纬洲 冯 on 1/25/16.
//  Copyright © 2016 dopcn. All rights reserved.
//

import Foundation

func qsortWrapper<A: Comparable>(inout array: [A]) {
    qsort_b(&array, array.count, strideof(A)) { a, b in
        let l: A = UnsafePointer(a).memory
        let r: A = UnsafePointer(b).memory
        return r > l ? -1 : (r == l ? 0 : 1)
    }
}

func heapsortWrapper<A: Comparable>(inout array: [A]) {
    heapsort_b(&array, array.count, strideof(A)) { a, b in
        let l: A = UnsafePointer(a).memory
        let r: A = UnsafePointer(b).memory
        return r > l ? -1 : (r == l ? 0 : 1)
    }
}

func mergesortWrapper<A: Comparable>(inout array: [A]) {
    mergesort_b(&array, array.count, strideof(A)) { a, b in
        let l: A = UnsafePointer(a).memory
        let r: A = UnsafePointer(b).memory
        return r > l ? -1 : (r == l ? 0 : 1)
    }
}

func psortWrapper<A: Comparable>(inout array: [A]) {
    psort_b(&array, array.count, strideof(A)) { a, b in
        let l: A = UnsafePointer(a).memory
        let r: A = UnsafePointer(b).memory
        return r > l ? -1 : (r == l ? 0 : 1)
    }
}