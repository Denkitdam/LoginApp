//
//  InfoViewController.swift
//  LoginApp
//
//  Created by Denis Kitaev on 05.04.2023.
//

import UIKit

final class InfoViewController: UIViewController {
    
    //@IBOutlet var image: UIImage!
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var dateOfBirthLabel: UILabel!
    @IBOutlet var placeOfBirthLabel: UILabel!
    @IBOutlet var codingExperienceLabel: UILabel!
    
    var personName: String!
    var personDateOfBirth: String!
    var personPlaceOFBirth: String!
    var personCodingExperience: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = "Name: \(personName!)"
        dateOfBirthLabel.text = "Date of birth: \(personDateOfBirth!)"
        placeOfBirthLabel.text = "Place of Birth: \(personPlaceOFBirth!)"
        codingExperienceLabel.text = "Coding experience: \(personCodingExperience!)"
    }
}
