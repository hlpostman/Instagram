//
//  LoginViewController.swift
//  Instagram
//
//  Created by Aristotle on 2017-02-28.
//  Copyright © 2017 HLPostman. All rights reserved.
//

import UIKit
import Parse

class LoginViewController: UIViewController {

    @IBOutlet weak var usernameField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!

    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var loginBackdropView: UIView!
    
    @IBOutlet weak var goToSignupBackdropView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        roundCorners()
        addBorders()
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onLoginButton(_ sender: AnyObject) {
//        PFUser.logInWithUsername(inBackground: usernameField.text!, password: passwordField.text!, block: { (user: PFUser?, error: Error?) -> Void in
//            if user != nil {
//                print("User with username \(self.usernameField.text!) logged in.")
//                self.performSegue(withIdentifier: "loginSegue", sender: nil)
//            }
//        })
    }

    @IBAction func onForgotButton(_ sender: AnyObject) {
    }
    
    @IBAction func onGoToSignupButton(_ sender: AnyObject) {
        // Present Signup View controller
    }
    
    func roundCorners() {
        usernameField.layer.cornerRadius = 3
        passwordField.layer.cornerRadius = 3
        loginButton.layer.cornerRadius = 3
        
        loginBackdropView.layer.cornerRadius = 2
        goToSignupBackdropView.layer.cornerRadius = 2
    }
    
    func addBorders() {
        let instaGray = UIColor(colorLiteralRed: (200/255), green: (200/255), blue: (200/255), alpha: 1).cgColor
        loginBackdropView.layer.borderWidth = 1
        loginBackdropView.layer.borderColor = instaGray
        
        goToSignupBackdropView.layer.borderWidth = 1
        goToSignupBackdropView.layer.borderColor = instaGray
        
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
