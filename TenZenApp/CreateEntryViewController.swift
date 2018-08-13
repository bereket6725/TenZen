//
//  CreateEntryViewController.swift
//  TenZenApp
//
//  Created by Bereket Ghebremedhin  on 8/6/18.
//  Copyright © 2018 Bereket Ghebremedhin . All rights reserved.
//

import UIKit
//protocol CreateEntryViewControllerDelegate: class {
//    func createEntryViewControllerUserDidTapDetails(_ controller: CreateEntryViewController)
//}

class CreateEntryViewController: UIViewController {
    
    //weak var delegate: CreateEntryViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func cancelButtonTapped(_ sender: Any) {
        presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
   
    @IBAction func beginButtonTapped(_ sender: Any) {
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        self.view.bounds.size = CGSize(width: UIScreen.main.bounds.size.width - 40, height: 350)
        self.view.layer.cornerRadius = 5
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
}
