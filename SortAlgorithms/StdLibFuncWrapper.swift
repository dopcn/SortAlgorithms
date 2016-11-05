//
//  StdLibFuncWrapper.swift
//  SortAlgorithms
//
//  Created by 纬洲 冯 on 1/25/16.
//  Copyright © 2016 dopcn. All rights reserved.
//

import Foundation

//func qsortWrapper<A: Comparable>(_ array: inout [A]) {
//    qsort_b(&array, array.count, MemoryLayout<A>.stride) { a, b in
//        let l: A = UnsafePointer(a).pointee
//        let r: A = UnsafePointer(b).pointee
//        return r > l ? -1 : (r == l ? 0 : 1)
//    }
//}
//
//func heapsortWrapper<A: Comparable>(_ array: inout [A]) {
//    heapsort_b(&array, array.count, MemoryLayout<A>.stride) { a, b in
//        let l: A = UnsafePointer(a).pointee
//        let r: A = UnsafePointer(b).pointee
//        return r > l ? -1 : (r == l ? 0 : 1)
//    }
//}
//
//func mergesortWrapper<A: Comparable>(_ array: inout [A]) {
//    mergesort_b(&array, array.count, MemoryLayout<A>.stride) { a, b in
//        let l: A = UnsafePointer(a).pointee
//        let r: A = UnsafePointer(b).pointee
//        return r > l ? -1 : (r == l ? 0 : 1)
//    }
//}
//
//func psortWrapper<A: Comparable>(_ array: inout [A]) {
//    psort_b(&array, array.count, MemoryLayout<A>.stride) { a, b in
//        let l: A = UnsafePointer(a).pointee
//        let r: A = UnsafePointer(b).pointee
//        return r > l ? -1 : (r == l ? 0 : 1)
//    }
//}
