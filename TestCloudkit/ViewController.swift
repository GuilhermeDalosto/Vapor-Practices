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
        var scores: [Int] = []
        var names: [String] = []
        
        let a  = CloudWorker()
        a.fetch(completion: { nomes,score in
            scores = score
            names = nomes
        })
        
        for value in scores.sorted(){
                
        }
        
    }


}

