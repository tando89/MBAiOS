//
//  ContactUsVC.swift
//  MBA
//
//  Created by Tan Do on 7/5/17.
//  Copyright © 2017 tan. All rights reserved.
//

import UIKit

class ContactUsVC: UIViewController {
    //Declare the URl for POST request
    let URL_FEEDBACK = "https://schoolserver-tand089.c9users.io/DepFeedback.php"
    override func viewDidLoad() {
        super.viewDidLoad()

        // Call function to dismiss the keyboard
        self.hideKeyboardWhenTappedAround()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
                    DispatchQueue.main.async {
                            let alert = UIAlertController(title: "Upload Didn't Work?", message: "Looks like the connection to the server didn't work.  Do you have Internet access?", preferredStyle: .alert)
                            alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
                            self.present(alert, animated: true, completion: nil)
                            }
                    return;
                }
                //No error
                else
                {
                    //parsing the response
                    do {
                        //converting resonse to NSDictionary
                        let myJSON =  try JSONSerialization.jsonObject(with: data!, options: .mutableContainers) as? NSDictionary
                        //parsing the json
                        if let parseJSON = myJSON{
                            //creating a string
                            var msg : String!
                            
                            //getting the json response
                            msg = parseJSON["message"] as! String?
                            
                            //Display the confirmation
                            DispatchQueue.main.async
                                {
                                    let alert = UIAlertController(title: "Congratulation", message: msg, preferredStyle: .alert)
                                    alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
                                    self.present(alert, animated: true, completion: nil)
                            }
                            print (msg)
                        }
                        }
                    catch {
                        print (error)
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
        }
    
    } //Finished Button Func
    
}
//Hide the keyboard
extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    func dismissKeyboard() {
        view.endEditing(true)
    }
}

