//
//  PresentationManager.swift
//  TenZenApp
//
//  Created by Bereket Ghebremedhin  on 8/10/18.
//  Copyright © 2018 Bereket Ghebremedhin . All rights reserved.
//

import Foundation
import UIKit

class PresentationManager: NSObject {
    
}
//will load the UIVIewController the UIPresentationController and the presentation/dismissal
extension PresentationManager: UIViewControllerTransitioningDelegate {
    //initialize our PresentationController subclass and pass in our presenting controller
    //and the controller we wish to present
    func presentationController(forPresented presented: UIViewController, presenting: UIViewController?, source: UIViewController) -> UIPresentationController? {
        let presentationController = PresentationController(presentedViewController: presented, presenting: presenting)
        return presentationController
    }
    //returns animationController for the presenting VC
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return PresentationAnimator(isPresentation: true)
    }

    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        let animator = PresentationAnimator(isPresentation: true)
        return animator
    }
}
