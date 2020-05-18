//
//  ErrorMessage.swift
//  gh-followers
//
//  Created by whiis on 5/12/20.
//  Copyright © 2020 kevtech. All rights reserved.
//

import Foundation

enum GFError: String, Error{
    case invalidUsername = "This username created an invalid request. Please try again."
    case unableToCompleteRequest = "Unable to complete your request. Please check your internet connection."
    case invalidResponse = "Invalid response from server. Please try again."
    case invalidData = "The data received from the server was invalid. Please try again."
    case unableToFavorite = "There was an error when trying to save. Please try again."
    case favoriteExists = "You've already favorited this user! 😊"
}
