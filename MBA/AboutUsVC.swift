//
//  AboutUsVC.swift
//  MBA
//
//  Created by tan on 6/29/17.
//  Copyright © 2017 tan. All rights reserved.
//

import UIKit

class AboutUsVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
 
    @IBAction func backHome(_ sender: Any) {
        self.dismiss(animated: true, completion: nil);
    }

    @IBAction func FB(_ sender: Any) {
        let spotiURL = URL(string: "https://www.facebook.com/cbpamba"); UIApplication.shared.open(spotiURL!, options: [:], completionHandler: nil);
    }

    @IBAction func IG(_ sender: Any) {
        let spotiURL = URL(string: "https://www.instagram.com/mba_csusb/"); UIApplication.shared.open(spotiURL!, options: [:], completionHandler: nil);
    }
    
    @IBAction func LinkedIn(_ sender: Any) {
        let spotiURL = URL(string: "https://www.linkedin.com/in/mbacsusb/"); UIApplication.shared.open(spotiURL!, options: [:], completionHandler: nil);
    }
    
    @IBAction func Twitter(_ sender: Any) {
        let spotiURL = URL(string: "https://twitter.com/MBACSUSB"); UIApplication.shared.open(spotiURL!, options: [:], completionHandler: nil);
    }
    
}
