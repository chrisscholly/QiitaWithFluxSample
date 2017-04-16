//
//  UIKeyboardInfo.swift
//  QiitaWithFluxSample
//
//  Created by marty-suzuki on 2017/04/17.
//  Copyright © 2017年 marty-suzuki. All rights reserved.
//

import UIKit

struct UIKeyboardInfo {
    let frame: CGRect
    let animationDuration: TimeInterval
    let animationCurve: UIViewAnimationOptions
    
    init?(info: [AnyHashable : Any]) {
        guard
            let frame = (info[UIKeyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue,
            let duration = info[UIKeyboardAnimationDurationUserInfoKey] as? TimeInterval,
            let curve = info[UIKeyboardAnimationCurveUserInfoKey] as? UInt
            else {
                return nil
        }
        self.frame = frame
        self.animationDuration = duration
        self.animationCurve = UIViewAnimationOptions(rawValue: curve)
    }
}
