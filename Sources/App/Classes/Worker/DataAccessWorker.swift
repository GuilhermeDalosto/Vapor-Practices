//
//  DataAccessWorker.swift
//  TestCloudkit
//
//  Created by Guilherme Martins Dalosto de Oliveira on 08/05/20.
//

import Foundation


class DataAccessWorker{
    let cloudWorker = CloudWorker()
    var orderedNames: [String] = []
    
    func getDataAndReload(){
        Cloudwork.fetch(completion: { [weak self] nomes,score in
            guard let `self` = self else {return}
            self.orderedNames = self.execOrderAndValueSwitch(names: nomes,scores: score)
            self.sendValuesToCloud(orderedNames: self.orderedNames)
        })
    }
    
    
}
