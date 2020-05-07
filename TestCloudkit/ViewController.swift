//
//  ViewController.swift
//  TestCloudkit
//
//  Created by Guilherme Martins Dalosto de Oliveira on 07/05/20.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let Cloudwork  = CloudWorker()
        
        var scores: [Int] = []
        var names: [String] = []
     
        
        
        Cloudwork.fetch(completion: { nomes,score in
            self.execOrderAndValueSwitch(names: nomes,scores: score)
        })
        
        
       
        
    }
    func execOrderAndValueSwitch(names: [String],scores: [Int]){
        var namesScores: [Int:String] = [:]
             var namesOrdered: [String] = []
           print(scores)
           print(names)
           
           for i in 0..<scores.count{
               namesScores[scores[i]] = names[i]
           }
           
           for value in scores.sorted(){
               namesOrdered.append(namesScores[value]!)
           }
           
           print(namesOrdered)
           }


}

