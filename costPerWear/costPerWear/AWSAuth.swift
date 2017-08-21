//
//  AWSAuth.swift
//  costPerWear
//
//  Created by Tameika Lawrence on 8/18/17.
//  Copyright © 2017 Tameika Lawrence. All rights reserved.
//

import Foundation
import AWSCore
import AWSCognito
import AWSCognitoIdentityProvider
import AFNetworking


// MARK : To make my own custom authentication server aka "Developer Authentication" (username/email & password)

// Gets a token to give Cognito so it can grant user an authenticated identity


class CPWIdentityProvider: AWSAbstractCognitoCredentialsProvider {
    
    // used to store the token retrieved from our custom authentication system
    
    var _token: String!
    
    // stores strings representing the diff systems (developer, facebook, etc) by which the user has been authenticated
    
    var _logins: [NSObject : AnyObject]!
    
    
     override var token: String {
        
        get {
            return _token
        }
    }
    
    
    override var logins: [NSObject : AnyObject] {
        
        get {
            return _logins
        }
        
        set {
            
            _logins = newValue
        }
    }
    
    // checks to see if there is already an identity, and if not, calls the refresh method
    
    override func getIdentityId() -> AWSTask! {
        
        if self.identityId != nil {
            return AWSTask(result: self.identityId)
        } else {
            return AWSTask(result: nil).continueWithBlock({ (task) -> AnyObject! in
                if self.identityId == nil {
                    return self.refresh()
                }
                return AWSTask(result: self.identityId)
            })
        
        }
    }
    
    
    // retrieves authorization for user in order to update the _token and _logins properties so the SDK can assign user to an authenticated role
    
    override func refresh() -> AWSTask! {
        return task
        
        let task = AWSTaskCompletionSource()
        let request = AFHTTPRequestOperationManager()
        request.requestSerializer
    }
    
    
    
    
    
    
}














