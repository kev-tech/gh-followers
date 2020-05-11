//
//  UIViewController+Ext.swift
//  gh-followers
//
//  Created by whiis on 5/9/20.
//  Copyright © 2020 kevtech. All rights reserved.
//

import UIKit

extension UIViewController {
   func presentGFAlertOnMainThread(title: String, message: String, buttonTitle: String) {
        DispatchQueue.main.async {
            let alertVC = GFAlertVC(title: title, message: message, buttonTitle: buttonTitle)
            alertVC.modalPresentationStyle = .overFullScreen
            alertVC.modalTransitionStyle = .crossDissolve
            self.present(alertVC, animated: true)
        }
    }
}
