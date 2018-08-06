//
//  EntryListViewController.swift
//  TenZenApp
//
//  Created by Bereket Ghebremedhin  on 8/4/18.
//  Copyright © 2018 Bereket Ghebremedhin . All rights reserved.
//

import UIKit
import Foundation


class EntryListViewController: UIViewController {
    var dataSource = EntryCollectionDataSource()
    
   // var viewModel: ViewModel!
    
    @IBOutlet weak var EntryCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        EntryCollectionView.dataSource = dataSource
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    /*
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
}
extension EntryListViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    }
}


