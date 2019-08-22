//
//  RoundButton.swift
//  mindimension
//
//  Created by simba on 8/21/19.
//  Copyright © 2019 simba. All rights reserved.
//

import UIKit

class RoundButton: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        initUI()
    }
    
    convenience init() {
        self.init(frame: CGRect.zero)
        initUI()
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        initUI()
    }
    
    func initUI() {
        layer.cornerRadius = 10
        clipsToBounds = true
        
        let color = UIColor(hexString: HEADER_VIEW_COLOR, alpha: 0.7)
        backgroundColor = color
    }
}

