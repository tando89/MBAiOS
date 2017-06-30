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
    
}
