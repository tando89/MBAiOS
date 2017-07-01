//
//  MbaStaffVC.swift
//  MBA
//
//  Created by tan on 6/30/17.
//  Copyright © 2017 tan. All rights reserved.
//

import UIKit

class MbaStaffVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func backToAboutUs(_ sender: Any) {
        self.dismiss(animated: true, completion: nil);
    }
    
    @IBAction func drSealDesc(_ sender: Any) {
        let alert01 = UIAlertController(title: "Dr. Craig Seal", message: "Welcome to your Graduate Programs, Where we work together (students, faculty, and staff) to provide an innovative, student-centered learning community; that integrates administrative theory with real world engagement; to make an impact in our lives and the lives of those around us.", preferredStyle: .alert)
        alert01.addAction(UIAlertAction(title: "Close", style: .cancel, handler: {(action:UIAlertAction) in
        }))
        self.present(alert01, animated: true, completion: nil)
    }
    
    @IBAction func drSealTel(_ sender: Any) {
        let telNum = URL(string: "tel://9095375735"); UIApplication.shared.open(telNum!, options: [:], completionHandler: nil);
    }
    
    @IBAction func drSealEmail(_ sender: Any) {
        let drsealEmail = URL(string: "message://cseal@csusb.edu"); UIApplication.shared.open(drsealEmail!, options: [:], completionHandler: nil);
    }
    
    
    @IBAction func deborahDesc(_ sender: Any) {
        let alert02 = UIAlertController(title: "Deborah Grijalva", message: "Greetings Prospective and Current Students, As the MBA Graduate Coordinator, I’m here to assist you in many different ways to ensure your success in your program of study. My purpose is to provide you with advisement services on a range of academic and related issues.", preferredStyle: .alert)
        alert02.addAction(UIAlertAction(title: "Close", style: .cancel, handler: {(action:UIAlertAction) in
        }))
        self.present(alert02, animated: true, completion: nil)
    }
    
    
    
    @IBAction func kasandraDesc(_ sender: Any) {
        let alert03 = UIAlertController(title: "Kasandra Adams", message: "Hello FUTURE MBAs! I chose to pursue my MBA here at CSUSB. Now, as an alumnus, I am here to help you decide if that same decision, is right for YOU! Please reach out to me with any questions or concerns you have regarding the MBA program.", preferredStyle: .alert)
        alert03.addAction(UIAlertAction(title: "Close", style: .cancel, handler: {(action:UIAlertAction) in
        }))
        self.present(alert03, animated: true, completion: nil)    }
    
}
