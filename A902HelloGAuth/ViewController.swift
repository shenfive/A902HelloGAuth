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
        Auth.auth().signInAnonymously()
        
    }


}

