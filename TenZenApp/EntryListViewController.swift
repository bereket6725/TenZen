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
    let delegate = PresentationManager()
    
    override func viewDidLoad() {
        EntryCollectionView.dataSource = dataSource
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func createEntryButtonTapped(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let creationView = storyboard.instantiateViewController(withIdentifier: "creationView") as! CreateEntryViewController
        creationView.delegate = self as? CreateEntryViewControllerDelegate 
        creationView.transitioningDelegate = delegate
        transitioningDelegate = presentationController as? UIViewControllerTransitioningDelegate
        creationView.modalPresentationStyle = .custom
        self.present(creationView, animated: true, completion: nil)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    }
}

extension EntryListViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    }
}


