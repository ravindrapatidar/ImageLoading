//
//  ImageDetaisVC.swift
//  ImageLoading
//
//  Created by Ravindra Patidar on 23/09/19.
//  Copyright © 2019 Ravindra Patidar. All rights reserved.
//

import UIKit

class ImageDetaisVC: UIViewController {
    
    
    // Outlets
    @IBOutlet weak var imageView: UIImageView!
    // Var
        var passedImage: UIImage!
        var imageUrl : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    // set the passedImage as ou imageView and provide the user with message if the passdedImage was empty
        if passedImage != nil {
            imageView.image = passedImage
        } else {
            
            Utilities.alert(title: "Err", message: "error loading photo")
        }
        
       
       
        
        navigationItem.title = "Photo"
        
        
    }
    
   

   

}
// the zomming effect moving between the view
extension ImageDetaisVC : ZoomingViewController
{
    func zoomingBackgroundView(for transition: ZoomTransitioningDelegate) -> UIView? {
        return nil
    }
    
    func zoomingImageView(for transition: ZoomTransitioningDelegate) -> UIImageView? {
        return imageView
    }
}
