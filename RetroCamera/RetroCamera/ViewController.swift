//
//  ViewController.swift
//  RetroCamera
//
//  Created by John Clem on 10/10/15.
//  Copyright © 2015 learnSwift. All rights reserved.
//

import UIKit
import SDWebImage

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var mainLabel: UILabel!
    
    var photos = [UIImage]()

    @IBAction func buttonPressed(sender: AnyObject) {
        print("button was pressed")
        self.mainLabel.text = "Button Tapped"
        
        var token = "asdfhasldkjfhasdf"
        NSUserDefaults.standardUserDefaults().setObject(token, forKey: "authToken")
    }
    
    @IBAction func addPhoto(sender: UIButton) {
        // create a UIImagePickerController
        let imagePicker = UIImagePickerController()
        // configure the image picker source type
        imagePicker.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
        // configure the image picker delegate
        imagePicker.delegate = self
        // present the image picker
        self.presentViewController(imagePicker, animated: true) { () -> Void in
            print("presented image picker")
        }
    }
    
    //MARK: UIImagePickerControllerDelegate
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        // Assigning the chosen image to our image view
        self.imageView.image = image
        // Add the selected image to our array
        self.photos.append(image)
        // Dismiss the image picker
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let destVC = segue.destinationViewController as? PhotosViewController {
            destVC.photos = self.photos
        }
    }
}

