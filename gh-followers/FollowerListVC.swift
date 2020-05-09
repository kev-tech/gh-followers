//
//  FollowerListVC.swift
//  gh-followers
//
//  Created by whiis on 5/9/20.
//  Copyright © 2020 kevtech. All rights reserved.
//

import UIKit

class FollowerListVC: UIViewController {
    
    var username: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.prefersLargeTitles = true
    }
}
