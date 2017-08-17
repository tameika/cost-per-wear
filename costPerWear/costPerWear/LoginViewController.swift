//
//  LoginViewController.swift
//  costPerWear
//
//  Created by Tameika Lawrence on 8/17/17.
//  Copyright © 2017 Tameika Lawrence. All rights reserved.
//

import Foundation
import UIKit
import AWSCore
import AWSCognito
import AWSCognitoIdentityProvider





class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        

    }

    
    func createCredentials() {
        
        let credentialProvider = AWSCognitoCredentialsProvider(regionType: .USEast1, identityPoolId: "163775170865145")
        let configuration = AWSServiceConfiguration(region: .USEast1, credentialsProvider: credentialProvider)
        AWSServiceManager.default().defaultServiceConfiguration = configuration
        
        let cognitoId = credentialProvider.identityId

    }
    
    
    
    
    
    
}
