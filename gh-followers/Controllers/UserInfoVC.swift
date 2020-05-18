//
//  UserInfoVC.swift
//  gh-followers
//
//  Created by whiis on 5/18/20.
//  Copyright © 2020 kevtech. All rights reserved.
//

import UIKit

class UserInfoVC: UIViewController {

    var username: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissUserInfoVC))
        navigationItem.rightBarButtonItem = doneButton
        
        print(username)
    }
    
    @objc func dismissUserInfoVC() {
        self.dismiss(animated: true)
    }
}
