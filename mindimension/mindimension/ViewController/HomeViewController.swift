//
//  HomeViewController.swift
//  mindimension
//
//  Created by simba on 8/20/19.
//  Copyright © 2019 simba. All rights reserved.
//

import UIKit

class HomeViewController: MusicViewController {
    
    @IBOutlet weak var titlebar: UIView!
    @IBOutlet weak var headerView: RoundHeaderView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        vcType = ALL_MUSIC_VC
        createMusicData()
    }
    
    
}
