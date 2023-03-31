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
    
    override func viewDidLayoutSubviews() {
        let gradient  = CAGradientLayer()
        
        gradient.colors = [
            UIColor.blue.cgColor,
            UIColor.green.cgColor,
            UIColor.purple.cgColor
        ]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradient.endPoint = CGPoint(x: 0.0, y: 1.0)
        gradient.frame = CGRect(
            x: 0.0,
            y: 0.0,
            width: self.view.frame.width,
            height: self.view.frame.height
        )
        
        self.view.layer.insertSublayer(gradient, at: 0)
    }
}