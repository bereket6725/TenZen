//
//  EntryCollectionDataSource.swift
//  TenZenApp
//
//  Created by Bereket Ghebremedhin  on 8/4/18.
//  Copyright © 2018 Bereket Ghebremedhin . All rights reserved.
//

import Foundation
import UIKit


class EntryCollectionDataSource: NSObject, UICollectionViewDataSource  {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
        
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 10
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "EntryCollectionViewCell", for: indexPath) as! EntryCollectionViewCell
        cell.entryTitle.text = "Test"
        
        return cell
    }
    

    
}
