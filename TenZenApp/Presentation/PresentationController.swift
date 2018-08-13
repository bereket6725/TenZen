//
//  PresentationController.swift
//  TenZenApp
//retu
//  Created by Bereket Ghebremedhin  on 8/10/18.
//  Copyright © 2018 Bereket Ghebremedhin . All rights reserved.
//

import Foundation
import UIKit
class PresentationController: UIPresentationController {
    var dimmingView = UIView()
    
    override init(presentedViewController: UIViewController, presenting presentingViewController: UIViewController?) {
        super.init(presentedViewController: presentedViewController, presenting: presentingViewController)
        dimmingView.backgroundColor = UIColor(white: 0.0, alpha: 0.8)
    }
}

extension PresentationController {
    
    override func presentationTransitionWillBegin() {
        dimmingView.frame = self.containerView!.bounds
        dimmingView.alpha = 0
        containerView?.insertSubview(dimmingView, at: 0)
        if let coordinator = presentedViewController.transitionCoordinator {
            coordinator.animate(alongsideTransition: { (context:UIViewControllerTransitionCoordinatorContext) in
                self.dimmingView.alpha = 1
            }, completion: nil)
        } else {
            dimmingView.alpha = 1
        }
    }
    
    override func dismissalTransitionWillBegin() {
        if let coordinator = presentedViewController.transitionCoordinator {
            coordinator.animate(alongsideTransition: { (context:UIViewControllerTransitionCoordinatorContext) in
                self.dimmingView.alpha = 0
            }, completion: nil)
        }else{
            dimmingView.alpha = 0
        }
    }
    
    override func containerViewWillLayoutSubviews() {
        if let containerBounds = containerView?.bounds {
            dimmingView.frame = containerBounds
            presentedView?.frame = containerBounds
        }
    }
}

extension PresentationController: UIAdaptivePresentationControllerDelegate {
    func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle {
        return .overFullScreen
    }
    
}
