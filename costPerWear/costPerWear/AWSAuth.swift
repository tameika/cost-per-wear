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

// MARK : To make my own custom authentication server


class CPWIdentityProvider: AWSAbstractCognitoCredentialsProvider {
    
    var _token: String!
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
    
    override func refresh() -> AWSTask! {
        return task
    }
    
}














