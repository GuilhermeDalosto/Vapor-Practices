//
//  DataAccessWorker.swift
//  TestCloudkit
//
//  Created by Guilherme Martins Dalosto de Oliveira on 08/05/20.
//

import Foundation


public class DataAccessWorker{
    let cloudWorker = CloudWorker()
    var orderedNames: [String] = []
    
    public func getDataAndReload(){
        cloudWorker.fetch(completion: { [weak self] nomes,score in
            guard let `self` = self else {return}
            self.orderedNames = SortOperation().execOrderAndValueSwitch(names: nomes,scores: score)
            self.cloudWorker.sendValuesToCloud(names: self.orderedNames)
        })
    }
    
    
}
