//
//  MusicViewController.swift
//  mindimension
//
//  Created by simba on 8/22/19.
//  Copyright © 2019 simba. All rights reserved.
//

import UIKit

class MusicViewController: UIViewController {
    
    var vcType: Int = ALL_MUSIC_VC
    
    var recommendedMusics = [Music]()
    var lockedMusics = [Music]()
    
    let collectionInsets = UIEdgeInsets(top: COLLECTION_VIEW_TOP_MARGIN,
                                        left: COLLECTION_VIEW_LEFT_MARGIN,
                                        bottom: COLLECTION_VIEW_BOTTOM_MARGIN,
                                        right: COLLECTION_VIEW_RIGHT_MARGIN)
    
    @IBOutlet weak var collectionView: UICollectionView!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func reLayout(width: CGFloat) {
        
        var cols: Int = IPHONE_PORT_COLS
        if UIDevice.current.orientation.isLandscape {
            if UIDevice.current.userInterfaceIdiom == .pad {
                cols = IPAD_LAND_COLS
            } else {
                cols = IPHONE_LAND_COLS
            }
        } else {
            if UIDevice.current.userInterfaceIdiom == .pad {
                cols = IPAD_PORT_COLS
            } else {
                cols = IPHONE_PORT_COLS
            }
        }
        
        let cgCols = CGFloat(cols)
        
        if let flowLayout = self.collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            flowLayout.minimumLineSpacing = COLLECTION_LINE_SPACE
            
            flowLayout.minimumInteritemSpacing = CELL_MIN_SPACE
            
            let itemWidth: CGFloat = (width - CELL_MIN_SPACE * (cgCols - 1 ) - COLLECTION_VIEW_LEFT_MARGIN - COLLECTION_VIEW_RIGHT_MARGIN) / cgCols
            
            flowLayout.itemSize = CGSize(width: itemWidth, height: itemWidth * CELL_WIDTH_HEIGHT_RATIO)
        }
    }
    
    func createMusicData() {
        let music1 = Music(type: 1, title: "Running in the Forest", path: "", locked: false, image: "music1_1.jpg")
        let music2 = Music(type: 1, title: "Running by the Shore", path: "", locked: true, image: "music1_2.jpg")
        let music3 = Music(type: 1, title: "Running by the Sea", path: "", locked: true, image: "music2_1.jpg")
        let music4 = Music(type: 1, title: "Running in the Wind", path: "", locked: true, image: "music3_1.jpg")
        
        let music5 = Music(type: 1, title: "Running in the Snow", path: "", locked: true, image: "music2_2.jpg")
        let music6 = Music(type: 1, title: "Running in the Desert", path: "", locked: true, image: "music1_3.jpg")
        
        recommendedMusics.append(music1)
        recommendedMusics.append(music2)
        recommendedMusics.append(music3)
        recommendedMusics.append(music4)
        
        lockedMusics.append(music5)
        lockedMusics.append(music6)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension MusicViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if section == 0 {
            return recommendedMusics.count
        } else {
            return lockedMusics.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MusicViewCell", for: indexPath) as! MusicViewCell
        
        var music: Music? = nil
        if indexPath.section == 0 {
            music = recommendedMusics[indexPath.row]
        } else {
            music = lockedMusics[indexPath.row]
        }
        cell.titleLabel.text = music!.title
        cell.imageView.image = UIImage(named: music!.image)
        if music!.locked == true {
            cell.lockImage.isHidden = false
        } else {
            cell.lockImage.isHidden = true
        }
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        switch kind {
            case UICollectionView.elementKindSectionHeader:
                let reusableview = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "MusicSectionView", for: indexPath) as! MusicSectionView
                
                //reusableview.frame = CGRect(x: 0 , y: 0, width: self.view.frame.width, height: 120)
                //do other header related calls or settups
                if indexPath.section == 0 {
                    reusableview.headerTitle.text = "Choose Your Music"
                } else  {
                    reusableview.headerTitle.text = "Unlock All Music"
                }
                
                return reusableview
            
            default:  fatalError("Unexpected element kind")
        }
    }
}

extension MusicViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.item + 1)
    }
}


