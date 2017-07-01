//
//  LearningGoalsVC.swift
//  MBA
//
//  Created by tan on 6/30/17.
//  Copyright © 2017 tan. All rights reserved.
//

import UIKit

class LearningGoalsVC: UIViewController {

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

}
