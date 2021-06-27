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
     
    let Downl =  Downloadingpictures()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func ccc(_ sender: Any) {
        Device.init().Message("ee")

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

