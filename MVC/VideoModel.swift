//
//  VideoModel.swift
//  MVC
//
//  Created by Palanichamy Padmanabhan on 23/11/18.
//  Copyright © 2018 Palanichamy Padmanabhan. All rights reserved.
//

import Foundation
import UIKit

class Video {
    var image: UIImage
    var title: String
    init(image: UIImage, title: String) {
        self.image = image
        self.title = title
    }
}
