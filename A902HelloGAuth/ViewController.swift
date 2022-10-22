//
//  ViewController.swift
//  A902HelloGAuth
//
//  Created by 申潤五 on 2022/10/22.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        Auth.auth().addStateDidChangeListener { auth, user in
            if user == nil{
                print("登出")
            }else{
                print(auth.currentUser?.uid)
            }
        }
    }

    @IBAction func signOut(_ sender: Any) {
        do{
            try Auth.auth().signOut()
        }catch{
            print(error.localizedDescription)
        }
        
    }
    
    @IBAction func singAn(_ sender: Any) {
        Auth.auth().signInAnonymously { authResult, error in
            print(authResult?.user.uid)
        }
    }
    
    
    
}

