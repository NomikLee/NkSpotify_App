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
    
    public var signInURL: URL? {
        let scopes = "user-read-private user-read-email"
        let redirectURL = "https://www.iosacademy.io"
        let base = "https://accounts.spotify.com/authorize"
        let string = "\(base)?response_type=code&client_id=\(Constants.clientID)&scope=\(scopes)&redirect_uri=\(redirectURL)&show_dialog=TRUE"
        return URL(string: string)
    }
    
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
    
    public func exchangeCodeForToken(code: String, completion: @escaping((Bool) -> Void)) {
        
    }
    
    public func refreshAccessToken() {
        
    }
    
    private func cacheToken() {
        
    }
}
