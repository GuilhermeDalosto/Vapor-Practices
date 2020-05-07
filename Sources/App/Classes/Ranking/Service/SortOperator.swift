//
//  SortOperator.swift
//  serverManagement
//
//  Created by Guilherme Martins Dalosto de Oliveira on 06/05/20.
//  Copyright © 2020 Panterimar. All rights reserved.
//

import Foundation


class SortOperator{
    
    func sortUsers(users: [User]) -> [User]{        
        return users.sorted(by: {$0.score < $1.score})
        
    }
    
    
}
