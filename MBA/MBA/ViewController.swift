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
    //navigate to Preference view without using segue
    @IBAction func PreferenceBtn(_ sender: Any) {
        let MainStoryBoard = UIStoryboard(name: "Main", bundle: nil)
        if let PrefVC = MainStoryBoard.instantiateViewController(withIdentifier: "PreferenceVC") as? PreferenceVC {
            self.present(PrefVC, animated: true, completion: nil)
        }
    }
    //Display a dialog alert
    
    @IBAction func welcomeAlert(_ sender: Any) {
        let alert01 = UIAlertController(title: "Hello", message: "Welcome to MBA program", preferredStyle: .alert)
        alert01.addAction(UIAlertAction(title: "Close", style: .cancel, handler: {(action:UIAlertAction) in
        }))
        self.present(alert01, animated: true, completion: nil)
    }
    
    @IBAction func aboutUsBtn(_ sender: Any) {
        let MainSB = UIStoryboard(name: "Main", bundle: nil)
        //AboutUsView
        if let AboutUsViewControl = MainSB.instantiateViewController(withIdentifier: "AboutUsView") as? AboutUsVC {
            self.present(AboutUsViewControl, animated: true, completion: nil)
        }
    }
    
    @IBAction func contactUsBtn(_ sender: Any) {
        let MainStoryBoard = UIStoryboard(name: "Main", bundle: nil)
        if let ContactVC = MainStoryBoard.instantiateViewController(withIdentifier: "contactUs") as? ContactUsVC {
            self.present(ContactVC, animated: true, completion: nil)
        }
    }
    
}

