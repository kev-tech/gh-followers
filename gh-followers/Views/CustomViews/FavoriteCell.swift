//
//  FavoriteCell.swift
//  gh-followers
//
//  Created by whiis on 5/20/20.
//  Copyright © 2020 kevtech. All rights reserved.
//

import UIKit

class FavoriteCell: UITableViewCell {
    
    let reuseID = "favoriteCell"
    let avatarImageView = GFAvatarImageView(frame: .zero)
    let username = GFTitleLabel(textAlignment: .center, fontSize: 26)
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        addSubview(avatarImageView)
        addSubview(username)
        
        accessoryType = .disclosureIndicator
        let padding:CGFloat = 12
        
        NSLayoutConstraint.activate([
            avatarImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            avatarImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: padding),
            avatarImageView.widthAnchor.constraint(equalToConstant: 60),
            avatarImageView.heightAnchor.constraint(equalToConstant: 60),
            
            username.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            username.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: padding),
            username.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -padding),
            username.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    func set(favorite: Follower) {
        username.text = favorite.login
        avatarImageView.downloadImage(from: favorite.avatarUrl)
    }
}
