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
    
    private let user = User(name: "Alexey", username: "User", password: "1234")
    private let person = Person(
        image: "Portrait",
        name: "Denis",
        dateOfBirth: "05.03.1999",
        placeOfBirth: "Moscow",
        interests: [
        "Coding",
        "Equestrian sport",
        "Music"
        ],
        codingExperience: 2
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameTF.text = user.username
        passwordTF.text = user.password
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destinationVC = segue.destination as? WelcomeViewController else { return }
        destinationVC.username = user.name
    }
    
    @IBAction func loginButtonTapped() {
        if userNameTF.text == user.username && passwordTF.text == user.password {
            performSegue(withIdentifier: "logIn", sender: nil)
        } else {
            showAlert(
                withTitle: "login or password is Incorrect",
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
        
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okButton = UIAlertAction(title: "Ok", style: .default) { _ in
            self.passwordTF.text = ""
        }
        
        alert.addAction(okButton)
        present(alert, animated: true)
   }
}
  // MARK: - keyboard extension
extension LoginViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTF {
            passwordTF.becomeFirstResponder()
        } else {
            loginButtonTapped()
        }
        return true
    }
}


