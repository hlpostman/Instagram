//
//  TimelineTableViewCell.swift
//  Instagram
//
//  Created by Aristotle on 2017-03-10.
//  Copyright © 2017 HLPostman. All rights reserved.
//

import UIKit
import Parse
import ParseUI

class TimelineTableViewCell: UITableViewCell {

    @IBOutlet weak var postedPictureImageView: PFImageView!
    
    @IBOutlet weak var captionLabel: UILabel!
    
    var userPost: PFObject! {
        
       // Set picture into image view and set caption
        didSet {

            self.postedPictureImageView.file = userPost["media"] as? PFFile 
            self.postedPictureImageView.loadInBackground()
            
            self.captionLabel.text = userPost["caption"] as? String
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
