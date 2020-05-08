//
//  Ranking.swift
//  quarto-mini-challenge
//
//  Created by Guilherme Martins Dalosto de Oliveira on 04/05/20.
//  Copyright © 2020 Panterimar. All rights reserved.
//

import Foundation


struct SortOperation{
        
    func execOrderAndValueSwitch(names: [String],scores: [Int]) -> [String]{
        var namesScores: [Int:String] = [:]
        var namesOrdered: [String] = []
        
        for i in 0..<scores.count{
            namesScores[scores[i]] = names[i]
        }
        
        for value in scores.sorted(){
            namesOrdered.append(namesScores[value]!)
        }
        
        return namesOrdered
    }
    
}
