//
//  ViewController.swift
//  SMMessage
//
//  Created by الياسي والأمل on 06/24/2021.
//  Copyright (c) 2021 الياسي والأمل. All rights reserved.
//

import UIKit
import SMMessage
class ViewController: UIViewController {
     
   // let Downl =  ActivityIndicatorMessageView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
   

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       // ActivityIndicatorMessageView.
    }
    
   
    
    @IBAction func button(_ sender: UIButton) {
        
        Message.init().showActivityIndicator("String")
    }
    
}

