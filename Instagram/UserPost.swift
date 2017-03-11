//
//  UserPost.swift
//  Instagram
//
//  Created by Aristotle on 2017-03-10.
//  Copyright © 2017 HLPostman. All rights reserved.
//

import UIKit
import Parse

class UserPost: NSObject {

    // Instatiate new posts with image (optional), caption (optional), and success block
    class func postUserImage(image: UIImage?, withCaption caption: String?, withCompletion completion: PFBooleanResultBlock?) {
        
        // Create Parse object PFObject
        let post = PFObject(className: "Post")
        
        post["media"] = getPFFileFromImage(image: image)
        post["author"] = PFUser.current()
        post["caption"] = caption
        
        // Save object (following function will save the object in Parse asynchronously)
        post.saveInBackground(block: completion)
        print("UserPost object successfully posted image.")
    }
    
    
    //Converts the UIImage to PFFile
    class func getPFFileFromImage(image: UIImage?) -> PFFile? {
        
        if let image = image {
            
            if let imageData = UIImagePNGRepresentation(image) {

                print("UserPost object succesfully found image png")
                return PFFile(name: "image.png", data: imageData)
                }
        }
        print("UserPost object FAILED to find or return image png")
        return nil
    }
    
    
}
