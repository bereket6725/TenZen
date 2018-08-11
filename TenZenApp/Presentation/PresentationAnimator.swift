//
//  PresentationAnimator.swift
//  TenZenApp
//
//  Created by Bereket Ghebremedhin  on 8/10/18.
//  Copyright © 2018 Bereket Ghebremedhin . All rights reserved.
//

import Foundation
import UIKit

final class PresentationAnimator: NSObject {
    let isPresentation: Bool
    
    init(isPresentation: Bool){
        self.isPresentation = isPresentation
    }
}

extension PresentationAnimator: UIViewControllerAnimatedTransitioning {
    //defines length of transition
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 0.4
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        let key = isPresentation ? UITransitionContextViewControllerKey.to : UITransitionContextViewControllerKey.from
        let controller = transitionContext.viewController(forKey: key)!
        //if its a presentation, addd the controllers view to the subview
        if isPresentation{
            transitionContext.containerView.addSubview(controller.view)
        }
        
        let presentedFrame = transitionContext.finalFrame(for: controller)
        var dismissedFrame = presentedFrame
        
        dismissedFrame.origin.y += dismissedFrame.size.height
        
        let initialFrame = isPresentation ? dismissedFrame : presentedFrame
        let finalFrame = isPresentation ? presentedFrame: dismissedFrame
        
        let animationDuration = transitionDuration(using: transitionContext)
        controller.view.frame = initialFrame
        
        UIView.animate(withDuration: animationDuration, animations: {
            controller.view.frame = finalFrame}) {finished in
                transitionContext.completeTransition(finished)
        }
        
    }
    

    
}
