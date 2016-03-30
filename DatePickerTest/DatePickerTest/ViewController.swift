//
//  ViewController.swift
//  DatePickerTest
//
//  Created by Dave Mockaitis on 3/29/16.
//  Copyright © 2016 Dave Mockaitis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myDatePicker: UIDatePicker!
    
    @IBOutlet weak var dateText: UILabel!
    

    @IBAction func button(sender: AnyObject) {
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateStyle = NSDateFormatterStyle.FullStyle

        let strDate = dateFormatter.stringFromDate(myDatePicker.date)
        self.dateText.text = strDate
        print(strDate)
        
//        http://www.codingexplorer.com/swiftly-getting-human-readable-date-nsdateformatter/
//        http://sourcefreeze.com/ios-datepicker-tutorial-uidatepicker-using-swift/
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

