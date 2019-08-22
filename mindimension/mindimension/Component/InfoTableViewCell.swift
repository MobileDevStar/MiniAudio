//
//  InfoTableViewCell.swift
//  mindimension
//
//  Created by simba on 8/21/19.
//  Copyright © 2019 simba. All rights reserved.
//

import UIKit

class InfoTableViewCell: UITableViewCell {
    
    @IBOutlet weak var butCell: RoundButton!
    
    
    override func awakeFromNib() {
        
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setButTitle(title: String) {
        butCell.setTitle(title, for: .normal)
    }
   
    
    
}
