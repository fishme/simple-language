//
//  QuestionViewController.swift
//  Simple Language
//
//  Created by David Hohl on 15.12.17.
//  Copyright © 2017 David Hohl. All rights reserved.
//

import UIKit
import Foundation



class QuestionsViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        guard let path = Bundle.main.path(forResource: "group_animals", ofType: "json") else { return }
        let url = URL(fileURLWithPath: path)
        
        do {
            let data = try Data(contentsOf: url)
            let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers)
            
            if let array = json as? [Any] {
                for object in array {
                    print(object)
                    print("---")
                }
            }
            
            
            
                /*
                
                guard let name = userDict["name"] as? String else { return }
                guard let company = userDict["company"] as? [String: String] else { return }
                guard let companyName = company["name"] else { return }
                 print(userId)
                 print(name)
                 print(companyName)
                */
            
 
        }
        catch {
            print(error)
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    
    
}
