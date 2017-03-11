//
//  AddPhotoViewController.swift
//  Instagram
//
//  Created by Aristotle on 2017-03-09.
//  Copyright © 2017 HLPostman. All rights reserved.
//

import UIKit
import Parse

class AddPhotoViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    
    @IBOutlet weak var openCameraButton: UIButton!
    @IBOutlet weak var openPhotosLibraryButton: UIButton!
    @IBOutlet weak var newPhotoImageView: UIImageView!
    @IBOutlet weak var addCaptionTextField: UITextField!
    @IBOutlet weak var submitPostButton: UIButton!
    
    let imagePickControl = UIImagePickerController()
    var image: UIImage!
    var imgPickControl = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func imagePickerController(_ picker: UIImagePickerController,
                               didFinishPickingMediaWithInfo info: [String : Any]) {
        // Get the image selected by the UIImagePickerController
        let originalImage = info[UIImagePickerControllerOriginalImage] as! UIImage
        // Let the user move the image in the frame and save the position they set
//        let editedImage = info[UIImagePickerControllerEditedImage] as! UIImage
        
        // Do something with the images (based on your use case)
//        image = editedImage
        image = originalImage
        newPhotoImageView.image = image
        
        // Dismiss UIImagePickerController to go back to your original view controller
        dismiss(animated: true, completion: nil)
    }

    @IBAction func onOpenCameraButtonPressed(_ sender: AnyObject) {
        let vc = UIImagePickerController()
        vc.allowsEditing = true
        vc.sourceType = UIImagePickerControllerSourceType.camera
        self.present(vc, animated: true, completion: nil)
    }
    
    @IBAction func onOpenPhotosLibraryBUttonPressed(_ sender: AnyObject) {
        let vc = UIImagePickerController()
        vc.delegate = self
        vc.allowsEditing = true
        vc.sourceType = UIImagePickerControllerSourceType.photoLibrary
        
        self.present(vc, animated: true, completion: nil)
    }
    
    @IBAction func onSubmitPostButtonPressed(_ sender: AnyObject) {
    
        //built-in Parse method that posts the image
        //Specifically, creates an object that is saved on Parse servers
        UserPost.postUserImage(image: image, withCaption: addCaptionTextField.text) { (success: Bool, error: Error?) in
            
            //If success
            if success {
                print("Photo got posted")
                
                // Clear out old data and return to homefeed view
                
                self.tabBarController?.selectedIndex = 0
                self.image = nil
                self.newPhotoImageView.image = nil
                self.addCaptionTextField.text = ""
//                self.addCaptionTextField.placeholder = "Caption your photo here..."
                
                //Error
            } else {
                print("Error posting to \"Instagram\" in function onSubmitPostButtonPressed(): \(error?.localizedDescription)")
            }
        }
    
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
