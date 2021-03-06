//
//  PersistenceManager.swift
//  gh-followers
//
//  Created by whiis on 5/18/20.
//  Copyright © 2020 kevtech. All rights reserved.
//

import Foundation

enum PersistenceActionType { case add, remove }

enum PersistenceManager {
    static private let defaults = UserDefaults.standard
    
    enum Keys {
        static let favorites = "favorites"
    }
    
    static func updateWith(favorite: Follower, actionType: PersistenceActionType, completed: @escaping (GFError?) -> Void) {
        retreiveFavorites { result in
            switch result {
            case .success(let favorites):
                var retreivedFavorites = favorites
                
                switch actionType {
                case .add:
                    guard !retreivedFavorites.contains(favorite) else {
                        completed(.favoriteExists)
                        return
                    }
                    
                    retreivedFavorites.append(favorite)
                case .remove:
                    retreivedFavorites.removeAll { $0.login == favorite.login }
                }
                
                completed(saveFavorites(favorites: retreivedFavorites))
            case .failure(let error):
                completed(error)
            }
        }
    }
    
    static func retreiveFavorites(completed: @escaping (Result<[Follower], GFError>) -> Void) {
        guard let favoritesData = defaults.object(forKey: Keys.favorites) as? Data else {
            completed(.success([]))
            return
        }
        
        do {
            let decoder = JSONDecoder()
            let favorites = try decoder.decode([Follower].self, from: favoritesData)
            completed(.success(favorites))
        } catch {
            completed(.failure(.unableToFavorite))
        }
    }
    
    static func saveFavorites(favorites: [Follower]) -> GFError? {
        do {
            let encoder = JSONEncoder()
            let encodedFavorites = try encoder.encode(favorites)
            defaults.set(encodedFavorites, forKey: Keys.favorites)
            return nil
        } catch {
            return .unableToFavorite
        }
    }
}
