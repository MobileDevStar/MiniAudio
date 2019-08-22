//
//  MusicViewCell.swift
//  mindimension
//
//  Created by simba on 8/22/19.
//  Copyright © 2019 simba. All rights reserved.
//

import UIKit

class MusicViewCell: UICollectionViewCell {
    
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var lockImage: UIImageView!
    @IBOutlet weak var titleView: MusicTitleView!
    @IBOutlet weak var imageView: MusicImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        initView()
    }
    
    func initView() {
        
        containerView.layer.cornerRadius = 5.0
        containerView.layer.shadowColor = UIColor.darkGray.cgColor
        containerView.layer.shadowOffset = CGSize.zero//CGSize(width: 0, height: 2)
        containerView.layer.shadowRadius = 5.0
        containerView.layer.shadowOpacity = 1
        //containerView.layer.shadowPath = UIBezierPath(rect: containerView.bounds).cgPath
        
        /*let shadowSize : CGFloat = 5.0
        let shadowPath = UIBezierPath(rect: CGRect(x: -shadowSize / 2,
                                                   y: -shadowSize / 2,
                                                   width: self.containerView.frame.size.width + shadowSize,
                                                   height: self.containerView.frame.size.height + shadowSize))
        self.containerView.layer.masksToBounds = false
        self.containerView.layer.shadowColor = UIColor.black.cgColor
        self.containerView.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        self.containerView.layer.shadowOpacity = 0.5
        self.containerView.layer.shadowPath = shadowPath.cgPath*/
        
    }
}
