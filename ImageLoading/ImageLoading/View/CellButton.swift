//
//  CellButton.swift
//  ImageLoading
//
//  Created by Ravindra Patidar on 23/09/19.
//  Copyright © 2019 Ravindra Patidar. All rights reserved.
//

import UIKit

class CellButton: UIButton {
    
        var url : String = ""
        convenience init(url: String) {
            self.init()
            self.url = url
            
        }
    

}
