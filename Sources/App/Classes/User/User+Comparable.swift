//
//  User+Comparable.swift
//  serverManagement
//
//  Created by Guilherme Martins Dalosto de Oliveira on 06/05/20.
//  Copyright © 2020 Panterimar. All rights reserved.
//

import Foundation

extension User: Comparable{
    static func < (lhs: User, rhs: User) -> Bool {
        return lhs.score < rhs.score
    }
    
    static func == (lhs: User, rhs: User) -> Bool {
        // Change Later
        return false
    }
}
