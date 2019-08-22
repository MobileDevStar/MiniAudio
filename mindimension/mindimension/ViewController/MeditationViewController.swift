//
//  MeditationViewController.swift
//  mindimension
//
//  Created by simba on 8/22/19.
//  Copyright © 2019 simba. All rights reserved.
//

import UIKit

class MeditationViewController: MusicViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        vcType = MEDITATION_MUSIC_VC
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
