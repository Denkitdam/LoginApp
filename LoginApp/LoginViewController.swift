//
//  ViewController.swift
//  LoginApp
//
//  Created by Denis Kitaev on 30.03.2023.
//

import UIKit

final class LoginViewController: UIViewController {
    
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    @IBOutlet var logInButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func forgotUsernameTapped() {
        showAlert(
            withTitle: "Your Username is User",
            andMessage: "Please enter your username"
        )
    }
    @IBAction func forgotPasswordTapped() {
        showAlert(
            withTitle: "Your Password is 1234",
            andMessage: "Please enter your password"
        )
    }
    
    
    
    
    
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "Ok", style: .default)
        
        alert.addAction(okButton)
        present(alert, animated: true)
   }
}

