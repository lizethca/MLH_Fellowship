//
//  PostFoodViewController.swift
//  PreServesApplication
//
//  Created by Maggie Grether on 7/22/21.
//

import UIKit

class PostFoodViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    var imagePicker = UIImagePickerController ()
    @IBOutlet weak var imageDisplay: UIImageView!
    func imagePickerController(_ _picker : UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]){
        if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
                    imageDisplay.image = selectedImage
            
        imagePicker.dismiss(animated: true, completion: nil)
                }
    }
    
    @IBAction func photoLibraryButton(_ sender: UIButton) {imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true, completion: nil)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
    }
}


        // Do any additional setup after loading the view.

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


