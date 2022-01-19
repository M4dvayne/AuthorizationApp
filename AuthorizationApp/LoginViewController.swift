//
//  ViewController.swift
//  AuthorizationApp
//
//  Created by Вячеслав Кремнев on 1/17/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
  
    private var userName = "Swift"
    private var userPassword = "Swiftbook"
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    super .touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let welcomeVC = segue.destination as? WelcomeViewController else {return}
        welcomeVC.greeting = "Hello, \(loginTextField.text ?? "")!"
    }
  
    @IBAction func loginButtonPressed(_ sender: UIAlertController) {
        
        if loginTextField.text != userName || passwordTextField.text != userPassword {
            
            let wrongValuesAlert = UIAlertController(
                title: "Wrong login or password!",
                message: "Please try again.",
                preferredStyle: .alert)
            
            wrongValuesAlert.addAction(UIAlertAction(
                title: NSLocalizedString(
                    "OK", comment: "Default action"),
                style: .default
            )
        )
            self.present(wrongValuesAlert, animated: true, completion: nil)
        } else {
            return
        }
    }
    
    @IBAction func showUserLogin() {
        let showLogin = UIAlertController(
            title: "🤔",
            message: "Your login is - \(userName)",
            preferredStyle: .alert
        )
        showLogin.addAction(UIAlertAction(
                                title: NSLocalizedString("Close",
                                comment: "Default action"),
                                style: .default)
        )
        self.present(showLogin, animated: true, completion: nil)
    }
    
    @IBAction func showUserPassword() {
        let showPassword = UIAlertController(
            title: "🤔",
            message: "Your password is - \(userPassword)",
            preferredStyle: .alert
        )
        showPassword.addAction(UIAlertAction(
                                title: NSLocalizedString("Close",
                                comment: "Default action"),
                                style: .default)
        )
        self.present(showPassword, animated: true, completion: nil)
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        loginTextField.text = ""
        passwordTextField.text = ""
    }
}


