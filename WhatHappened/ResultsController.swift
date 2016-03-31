//
//  ResultsController.swift
//  WhatHappened
//
//  Created by Dave Mockaitis on 3/30/16.
//  Copyright © 2016 Dave Mockaitis. All rights reserved.
//

import UIKit

class ResultsController: UIViewController {

    @IBOutlet weak var selectedDate: UILabel!
    
    var fromVC = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        selectedDate.text = fromVC
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateStyle = NSDateFormatterStyle.LongStyle
        let date = dateFormatter.dateFromString(fromVC)
        
        self.title = String(fromVC)
        
//        http://ronnykibet.com/convert-nsdate-to-string-and-vice-versa-swift/
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    


    
    
    
    
    
}




