//
//  PreferenceVC.swift
//  MBA
//
//  Created by tan on 6/29/17.
//  Copyright © 2017 tan. All rights reserved.
//

import UIKit

class PreferenceVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func BackHome(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func ToAboutTheApp(_ sender: Any) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        
        if let AboutVC = sb.instantiateViewController(withIdentifier: "AboutVC") as? AboutTheApp {
            self.present(AboutVC, animated: true, completion: nil)
        }
    }
    
}
