//
//  User.swift
//  serverManagement
//
//  Created by Guilherme Martins Dalosto de Oliveira on 06/05/20.
//  Copyright © 2020 Panterimar. All rights reserved.
//

import Foundation

import Foundation

struct User{
    var name: String
    var id: Int
    var score: Int
    var division: DivisionType {get{self.division}set{switch score{case 0:self.division = .Trainee;default: self.division = .Senior}}}
    
    init(name: String,id: Int,score: Int){
        self.name = name
        self.id = id
        self.score = score
    }
}
