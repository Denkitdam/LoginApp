//
//  ResultViewController.swift
//  LoginApp
//
//  Created by Denis Kitaev on 31.03.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet var greetingsLabel: UILabel!
    
    var userName: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        greetingsLabel.text = "Welcome, \(userName!)"
    }
      
    @IBAction func logOutButtonTapped() {
        dismiss(animated: true)
    }
    

}
