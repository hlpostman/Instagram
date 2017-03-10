//
//  TimelineViewController.swift
//  Instagram
//
//  Created by Aristotle on 2017-03-09.
//  Copyright © 2017 HLPostman. All rights reserved.
//

import UIKit
import Parse

class TimelineViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var posts: [PFObject]?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Table view data source and delegate
        tableView.dataSource = self
        tableView.delegate = self
        
        // Get timeline with network call
        networkCall()
    }

    func networkCall() {
        
        let query = PFQuery(className: "Post")
        query.order(byDescending: "createdAt")
        query.limit = 20
        
        // Look through Parse
        query.findObjectsInBackground { (posts: [PFObject]?, error: Error?) in
            
            if let posts =  posts {
                self.posts = posts
                self.tableView.reloadData()
            } else {
                print("Error fetching timeline in function networkCall(): \(error!.localizedDescription)")
            }
        }
        
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

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
