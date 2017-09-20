//
//  ViewController.swift
//  Grabbing Photos from the Photo Roll
//
//  Created by altu on 9/19/17.
//  Copyright © 2017 dkato. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {


    @IBAction func chooseImage(_ sender: Any) {
        // when the user taps on the button, new var / controller is created, the process of picking an image
        let imagePickerController = UIImagePickerController()
        // selecting current view controller
        imagePickerController.delegate = self
        // selecting photos from library, can change to camera by switching to camera
        imagePickerController.sourceType = UIImagePickerControllerSourceType.photoLibrary
        // not allowing editing before importing image
        imagePickerController.allowsEditing = false
        // display view controller, do nothing when completed
        self.present(imagePickerController, animated: true, completion: nil)
    }
    
    @IBOutlet weak var imageView: UIImageView!
    // adding selected image to image view, once user selects one
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        // check if user sucessfully selected an image that exists and not just canceled, cast image to the UI
        if let image = info[UIImagePickerControllerOriginalImage] as? UIImage {
            imageView.image = image
        } else {
            print("There was a problem getting the image")
        }
        // dismissing the UI after complete
        self.dismiss(animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

