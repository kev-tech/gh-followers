//
//  User.swift
//  gh-followers
//
//  Created by whiis on 5/12/20.
//  Copyright © 2020 kevtech. All rights reserved.
//

import Foundation

struct User: Codable {
    var login: String
    var avatarUrl: String
    var name: String?
    var location: String?
    var bio: String?
    var publicRepos: Int?
    var publicGists: Int?
    var htmlUrl: String
    var followingUrl: Int
    var followers: Int
    var createdAt: String
}
