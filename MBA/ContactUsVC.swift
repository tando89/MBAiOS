//
//  ContactUsVC.swift
//  MBA
//
//  Created by Tan Do on 7/5/17.
//  Copyright © 2017 tan. All rights reserved.
//

import UIKit

class ContactUsVC: UIViewController, UITextFieldDelegate {
    //Declare the URl for POST request
    let URL_FEEDBACK = "https://schoolserver-tand089.c9users.io/DepFeedback.php"
    override func viewDidLoad() {
        super.viewDidLoad()

        // Call function to dismiss the keyboard
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //dismiss keyboard when touching outside
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    //dismiss keyboard when hit return
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    //UITextField property to hold the most recently used textfield
    private var currentTextField: UITextField?
    //function to stop editting the last used textfield
    func textFieldDidBeginEditing(_ textField: UITextField) {
        currentTextField = textField
    }
    
    @IBAction func dismissBtn(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }

    //MBA phone number
    @IBAction func mbaTel(_ sender: Any) {
    }
    //MBA email
    @IBAction func mbaEmail(_ sender: Any) {
    }
    
    @IBOutlet weak var firstNameTxt: UITextField!
    
    @IBOutlet weak var lastNameTxt: UITextField!
    
    
    @IBOutlet weak var studentIdTxt: UITextField!
    
    @IBOutlet weak var coyoteMail: UITextField!
    
    @IBOutlet weak var messageTxt: UITextField!
    
    @IBAction func submitBtn(_ sender: Any) {
        let requestURL = NSURL(string: URL_FEEDBACK)
        let request = NSMutableURLRequest(url: requestURL! as URL)
        
        request.httpMethod = "POST"
        
        //Get values from textfields
        let fName = firstNameTxt.text
        let lName = lastNameTxt.text
        let studentID = studentIdTxt.text
        let cEmail = coyoteMail.text
        let message = messageTxt.text
        
        //creating the post parameter by concatenating the keys and values from text field
        if (fName == "" || lName == "" || studentID == "" || cEmail == "" || message == "") {
            //Display warning
            let alert = UIAlertController(title: "Warning!", message: "Please insert data", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        else {
            //put the key values into a param
            let postParameters = "FIRSTNAME="+fName!+"&LASTNAME="+lName!+"&STUDENTID="+studentID!+"&STUDENTEMAIL="+cEmail!+"&MESSAGES="+message!
            
            //adding the parameters to request body
            request.httpBody = postParameters.data(using: String.Encoding.utf8)
            
            //creating a task to send the post request
            let task = URLSession.shared.dataTask(with: request as URLRequest){
                (data, response, error) in
                if error != nil
                {
                    print(error as Any)
                    DispatchQueue.main.async {
                            let alert = UIAlertController(title: "Submit failed!", message: "Please check Internet connection", preferredStyle: .alert)
                            alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
                            self.present(alert, animated: true, completion: nil)
                            }
                }
                //No error
                else
                {
                    print("response = \(String(describing: response))")
                    //Retieve the response from server
                    let responseString = NSString(data: data!, encoding: String.Encoding.utf8.rawValue)
                    print (responseString as Any)
                    DispatchQueue.main.async
                        {
                            let alert = UIAlertController(title: "Congratulation!", message: responseString! as String, preferredStyle: .alert)
                            alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
                            self.present(alert, animated: true, completion: nil)
                    }
                }
                
            }
            //executing the task
            task.resume()
            //clear text fields after submit
            firstNameTxt.text = ""
            lastNameTxt.text = ""
            studentIdTxt.text = ""
            coyoteMail.text = ""
            messageTxt.text = ""
            //call the function to stop editting the last textfield
            if let currentTextField = currentTextField {
                currentTextField.resignFirstResponder()
            }
        }
    
    } //Finished Button Func
    
}


