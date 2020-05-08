//
//  CloudWorker.swift
//  TestCloudkit
//
//  Created by Guilherme Martins Dalosto de Oliveira on 07/05/20.
//

import Foundation
import CloudKit

class CloudWorker{
    
    static let shared = CloudWorker()
    private let container = CKContainer(identifier: "iCloud.com.panterimar.quarto-mini-challenge")
    
    func fetch(completion: @escaping ([String],[Int])-> Void){
        print("Fetching...")
        var stringIds: [String] = []
        var scoreUsers: [Int] = []
        let publicDataBase = container.publicCloudDatabase
        let predicate = NSPredicate(value: true)
        let query = CKQuery(recordType: "User", predicate:  predicate)
        let queryOperation = CKQueryOperation(query: query)
        
        queryOperation.desiredKeys =  ["pointsAmount"]
        
        queryOperation.recordFetchedBlock = { (record) -> Void in
            stringIds.append(record.recordID.recordName)
            // CKRecord.id //
            scoreUsers.append(record.value(forKey: "pointsAmount") as! Int)
            
        }
        
        queryOperation.queryCompletionBlock = ( { (_, _)-> Void in
            completion(stringIds,scoreUsers)
        })
        
        
        print("Performing operation...")
        publicDataBase.add(queryOperation)
    }
    
    func sendValuesToCloud(names: [String]){
        let publicDatabase = container.publicCloudDatabase
        
        let record = CKRecord(recordType: "Ranking")
        let recordOperation = CKModifyRecordsOperation()
        
        
        let namesAsReference = names.map { (name) -> CKRecord.Reference in
            let recordID = CKRecord.ID(recordName: name)
            return CKRecord.Reference(recordID: recordID, action: .deleteSelf)
        }
        
        
        record.setValue(namesAsReference, forKeyPath: "userIds")
        recordOperation.recordsToSave = [record]
        recordOperation.savePolicy = .ifServerRecordUnchanged
        
        publicDatabase.add(recordOperation)
    }
    
}
