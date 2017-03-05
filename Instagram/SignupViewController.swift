//
//  SignupViewController.swift
//  Instagram
//
//  Created by Aristotle on 2017-02-28.
//  Copyright © 2017 HLPostman. All rights reserved.
//

import UIKit
import Parse

class SignupViewController: UIViewController {

    @IBOutlet weak var signupBackdropView: UIView!
    @IBOutlet weak var goToLoginBackdropView: UIView!
   
    @IBOutlet weak var phoneOrEmailField: UITextField!
    
    @IBOutlet weak var nameField: UITextField!
    
    @IBOutlet weak var usernameField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var signupButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        roundCorners()
//        addBorders()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onSignupButton(_ sender: AnyObject) {
//        let newUser = PFUser()
//        
//        newUser.username = usernameField.text
//        newUser.password = passwordField.text
//        
//        newUser.signUpInBackground(block: { (success: Bool, error: Error?) -> Void in
//            if success {
//                print("Created a user with username \(newUser.username!)")
//                // Present logged in view with welcome message - still need to make this and a "signupSegue"
////                self.performSegue(withIdentifier: "signupSegue", sender: nil)
//            } else {
//                print(error?.localizedDescription)
//            }
//        })
    }

    @IBAction func onGoToTermsAndPrivacyButton(_ sender: AnyObject) {
        // Open URL to Instagram Terms and Privacy webpage
        let termsURL = NSURL(string: "https://help.instagram.com/478745558852511")! as URL
        UIApplication.shared.open(termsURL, options: [:], completionHandler: nil)
    }
    
    @IBAction func onGoToLoginButton(_ sender: AnyObject) {
        // Present Login view controller
    }
    
    
    func roundCorners() {
        phoneOrEmailField.layer.cornerRadius = 3
        nameField.layer.cornerRadius = 3
        usernameField.layer.cornerRadius = 3
        passwordField.layer.cornerRadius = 3
        signupButton.layer.cornerRadius = 3
        
        signupBackdropView.layer.cornerRadius = 2
        goToLoginBackdropView.layer.cornerRadius = 2
    }
    
    func addBorders() {
        let instaGray = UIColor(colorLiteralRed: (200/255), green: (200/255), blue: (200/255), alpha: 1).cgColor
        // Backdrop views
        signupBackdropView.layer.borderWidth = 1
        signupBackdropView.layer.borderColor = instaGray
        
        goToLoginBackdropView.layer.borderWidth = 1
        goToLoginBackdropView.layer.borderColor = instaGray
        
        
        
        // Fields
        
        phoneOrEmailField.layer.borderWidth = 1
        phoneOrEmailField.layer.borderColor = instaGray
        
        nameField.layer.borderWidth = 1
        nameField.layer.borderColor = instaGray
        
        usernameField.layer.borderWidth = 1
        usernameField.layer.borderColor = instaGray
        
        passwordField.layer.borderWidth = 1
        passwordField.layer.borderColor = instaGray
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
