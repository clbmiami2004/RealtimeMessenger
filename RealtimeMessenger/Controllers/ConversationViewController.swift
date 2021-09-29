//
//  ViewController.swift
//  RealtimeMessenger
//
//  Created by Christian Lorenzo on 6/30/21.
//

import UIKit
import FirebaseAuth

class ConversationViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        validateAuth()
    }
    
    //User remains logged in after logging in the first time:
    private func validateAuth() {
        if FirebaseAuth.Auth.auth().currentUser == nil {
            let vc = LoginViewController()
            let nav = UINavigationController(rootViewController: vc)
            nav.modalPresentationStyle = .fullScreen
            present(nav, animated: true)
        }
    }
    
    
}

