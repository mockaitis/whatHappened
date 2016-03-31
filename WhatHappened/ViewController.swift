//
//  ViewController.swift
//  WhatHappened
//
//  Created by Dave Mockaitis on 2/25/16.
//  Copyright © 2016 Dave Mockaitis. All rights reserved.
//

import UIKit

//Calendar with dates you can click on


class ViewController: UIViewController {

    @IBOutlet weak var myDatePicker: UIDatePicker!
    
    @IBOutlet weak var dateText: UILabel!
    
    var strDate = ""

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func button(sender: AnyObject) {
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateStyle = NSDateFormatterStyle.FullStyle
        
        let strDate = dateFormatter.stringFromDate(myDatePicker.date)
        self.dateText.text = strDate
        
        //        http://www.codingexplorer.com/swiftly-getting-human-readable-date-nsdateformatter/
        //        http://sourcefreeze.com/ios-datepicker-tutorial-uidatepicker-using-swift/
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "toResults" {
            let dVC = segue.destinationViewController as! ResultsController
            print  (dateText)
            dVC.fromVC = dateText.text!
        }
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

