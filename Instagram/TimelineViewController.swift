//
//  TimelineViewController.swift
//  Instagram
//
//  Created by Aristotle on 2017-03-09.
//  Copyright © 2017 HLPostman. All rights reserved.
//

import UIKit
import Parse

class TimelineViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onLogoutButtonPressed(_ sender: AnyObject) {
        // Log the user out of the backend
        PFUser.logOutInBackground { (error: Error?) in
            // If no error, return user to the login view controller
            if error == nil {
                self.performSegue(withIdentifier: "logoutSegue", sender: nil)
            } else {
                print("Error logging out")
            }
            
        }
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
