//
//  ResultViewController.swift
//  LoginApp
//
//  Created by Denis Kitaev on 31.03.2023.
//

import UIKit

final class ResultViewController: UIViewController {

    @IBOutlet var greetingsLabel: UILabel!
    
    var username: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingsLabel.text = "Hello, \(username ?? "")"
    }
}
