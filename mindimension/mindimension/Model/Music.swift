//
//  File.swift
//  mindimension
//
//  Created by simba on 8/22/19.
//  Copyright © 2019 simba. All rights reserved.
//

import Foundation

class Music {
    var type: Int
    var title: String
    var path: String
    var locked: Bool
    var image: String
    
    init(type:Int, title: String, path: String, locked: Bool, image: String) {
        self.type = type
        self.title = title
        self.path = path
        self.locked = locked
        self.image = image
    }
}
