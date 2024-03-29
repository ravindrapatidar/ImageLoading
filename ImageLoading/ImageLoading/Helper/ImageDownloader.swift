//
//  ImageDownloader.swift
//  ImageLoading
//
//  Created by Ravindra Patidar on 23/09/19.
//  Copyright © 2019 Ravindra Patidar. All rights reserved.
//
import Foundation
import  UIKit

var imageToCache: NSCache<AnyObject, AnyObject> = NSCache()

extension UIImageView {
    
    func downloadImage(withUrlString urlString: String) {
        
        
        let url = URL(string: urlString)!
        
        if let imageFromCache = imageCache.object(forKey: url.absoluteString as AnyObject) as? UIImage {
            self.image = imageFromCache
            
            return
        }
        
        URLSession.shared.dataTask(with: url, completionHandler: { (data, response, error) in
            
            if error != nil {
                debugPrint(String(describing: error?.localizedDescription))
                return
            }
            
            DispatchQueue.main.async {
                let imageToCache = UIImage(data: data!)
                self.image = imageToCache
                imageCache.setObject(imageToCache!, forKey: url.absoluteString as AnyObject)
            }
        }).resume()
    }
    
    
}
