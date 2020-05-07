//
//  DatabaseWorker.swift
//  App
//
//  Created by Guilherme Martins Dalosto de Oliveira on 07/05/20.
//

import Foundation

class DatabaseWorker {
    var users = [User(name: "Gui", id: 0, score: 1),
                 User(name: "Pedrin", id: 1,  score: 4),
                 User(name: "Toin", id: 2,  score: 2),
                 User(name: "Berns", id: 3,  score: 3)]
    
    var sortOperator = SortOperator()
    
    func start() -> [String:Int]{
        var dictRanked: [String:Int] = [:]
        let orderedUsers = sortOperator.sortUsers(users: users)
        for index in 0..<users.count{
                dictRanked[users[index].name] = users[index].score
        }
        return dictRanked
    }
    
}
