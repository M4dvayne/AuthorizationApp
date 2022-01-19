//
//  WelcomeViewController.swift
//  AuthorizationApp
//
//  Created by Вячеслав Кремнев on 1/17/22.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var greetingUserLabel: UILabel!
    
    var greeting: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        greetingUserLabel.text = greeting
    }
    
    @IBAction func userLogoutButton() {
        dismiss(animated: true)
    }
}


