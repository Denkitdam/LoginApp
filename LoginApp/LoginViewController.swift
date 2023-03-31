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
    
    private let username = "User"
    private let password = "1234"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destinationVC = segue.destination as? ResultViewController else { return }
        destinationVC.username = userNameTF.text
    }
    @IBAction func loginButtonTapped() {
        if username.contains(self.userNameTF!.text!) && password.contains(passwordTF!.text!){
            performSegue(withIdentifier: "logIn", sender: nil)
        } else {
            showAlert(
                withTitle: "login or password is Invalid",
                andMessage: "Please enter correct login and password"
            )
        }
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
        let okButton = UIAlertAction(title: "Ok", style: .default) { _ in
            self.passwordTF.text = ""
        }
        
        alert.addAction(okButton)
        present(alert, animated: true)
   }
}

