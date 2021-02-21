//
//  CollectionExtensions.swift
//  AlgorithmSwift
//
//  Created by Jinwoo Kim on 2021/02/21.
//  Copyright © 2021 Jinuman. All rights reserved.
//

import Foundation

extension Collection where Index: Comparable {

    /// More safe way to access collection
    subscript (safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}

/// [1, 2, 3, 4, 5, 6, 7].chunked(into: 3) = [[1, 2, 3], [4, 5, 6], [7]]
extension Array {
    func chunked(into size: Int) -> [[Element]] {
        return stride(from: 0, to: count, by: size).map {
            Array(self[$0 ..< Swift.min($0 + size, count)])
        }
    }
}
