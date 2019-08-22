//
//  CollectionSectionViewCollectionReusableView.swift
//  mindimension
//
//  Created by simba on 8/22/19.
//  Copyright © 2019 simba. All rights reserved.
//

import UIKit

class MusicSectionView: UICollectionReusableView {
        
    @IBOutlet weak var headerView: RoundHeaderView!
    @IBOutlet weak var headerTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        initView()
    }
    
    func initView() {
       /* let shadowSize : CGFloat = 5.0
        let shadowPath = UIBezierPath(rect: CGRect(x: -shadowSize / 2,
                                                   y: -shadowSize / 2,
                                                   width: headerView.frame.size.width + shadowSize,
                                                   height: headerView.frame.size.height + shadowSize))
        headerView.layer.masksToBounds = false
        headerView.layer.shadowColor = UIColor.black.cgColor
        headerView.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        headerView.layer.shadowOpacity = 0.5
        headerView.layer.shadowPath = shadowPath.cgPath*/
    }
}
