//
//  HomeViewController.swift
//  mindimension
//
//  Created by simba on 8/20/19.
//  Copyright © 2019 simba. All rights reserved.
//

import UIKit

class HomeViewController: MusicViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        vcType = ALL_MUSIC_VC
        createMusicData()
        
        collectionView.contentInset = collectionInsets
        collectionView.dataSource = self
        collectionView.delegate = self
        
        reLayout(width: self.view.bounds.width)
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        
        reLayout(width: size.width)
    }
    
}
