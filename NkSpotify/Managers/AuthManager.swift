//
//  AuthManager.swift
//  NkSpotify
//
//  Created by Pinocchio on 2024/4/25.
//

import Foundation


final class AuthManager {
    static let shared = AuthManager()
    
    struct Constants {
        static let clientID = "8d7b1d945b804b4cb93c2ceba196a14b"
        static let clientSecret = "2ca4f5a979364868af18a4e6db51bdcf"
    }
    
    private init() {}
    
    var isSighedIn: Bool {
        return false
    }
    
    private var accessToken: String? {
        return nil
    }
    
    private var refreshToken: String? {
        return nil
    }
    
    private var tokenExpirationDate: Date? {
        return nil
    }
    
    private var shouldRefreshToken: Bool {
        return false
    }
}
