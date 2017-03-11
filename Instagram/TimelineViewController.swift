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
//    var posts: [PFObject] = [ ]
    
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
                print("We got some posts")
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
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("Count returned: ", self.posts?.count)
//        let post = posts![0]
//        print("Photopath: \(post["media"]!)")
        return self.posts?.count ?? 0
//        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TimeLineTableViewCell", for: indexPath) as! TimelineTableViewCell
        if posts != nil {
            let post = posts![indexPath.row]
            cell.userPost = post
            print("💗 Your post:", cell.userPost)
        }
        return cell
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
