//
//  MBAViewController.swift
//  MBAv1
//
//  Created by tan on 6/27/17.
//  Copyright © 2017 tan. All rights reserved.
//

import UIKit

class MBAViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func FaceBook(_ sender: Any) {
        let FacebookURL = URL(string: "https://www.facebook.com/cbpamba")
            UIApplication.shared.open(FacebookURL!, options: [:], completionHandler: nil)
    }

    @IBAction func Instagram(_ sender: Any) {
        let FacebookURL = URL(string: "https://www.instagram.com/mba_csusb/")
        UIApplication.shared.open(FacebookURL!, options: [:], completionHandler: nil)
    }
    
    @IBAction func Twitter(_ sender: Any) {
        let FacebookURL = URL(string: "https://twitter.com/MBACSUSB")
        UIApplication.shared.open(FacebookURL!, options: [:], completionHandler: nil)
    }
    
    @IBAction func Linkedin(_ sender: Any) {
        let FacebookURL = URL(string: "https://www.linkedin.com/in/mbacsusb/")
        UIApplication.shared.open(FacebookURL!, options: [:], completionHandler: nil)
    }
    
}

