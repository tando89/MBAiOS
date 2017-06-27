//
//  ViewController.swift
//  MBA
//
//  Created by tan on 6/24/17.
//  Copyright © 2017 tan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //let spotiURL = URL(string: "http://www.google.com"); UIApplication.shared.open(spotiURL!, options: [:], completionHandler: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //Link to MBA Facebook page
    @IBAction func FaceBook(_ sender: Any) {
        let spotiURL = URL(string: "https://www.facebook.com/cbpamba"); UIApplication.shared.open(spotiURL!, options: [:], completionHandler: nil);
    }
    //Link to MBA Instagram Page
    @IBAction func Instagram(_ sender: Any) {
        let spotiURL = URL(string: "https://www.instagram.com/mba_csusb/"); UIApplication.shared.open(spotiURL!, options: [:], completionHandler: nil);
    }
    //Link to MBA LinkedIn page
    @IBAction func LinkedIn(_ sender: Any) {
        let spotiURL = URL(string: "https://www.linkedin.com/in/mbacsusb/"); UIApplication.shared.open(spotiURL!, options: [:], completionHandler: nil);
    }
    //Link to MBA Twitter page
    @IBAction func Twitter(_ sender: Any) {
        let spotiURL = URL(string: "https://twitter.com/MBACSUSB"); UIApplication.shared.open(spotiURL!, options: [:], completionHandler: nil);
    }
    
}

