//
//  GalleryVC.swift
//  Hajj Snap
//
//  Created by Majed Hariri on 8/1/18.
//  Copyright © 2018 Majed Hariri. All rights reserved.
//

import UIKit

class GalleryVC: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return UICollectionViewCell()
    }
    

    @IBOutlet weak var Gallery_Collection: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
Gallery_Collection.delegate = self
        // Do any additional setup after loading the view.
    }



}
