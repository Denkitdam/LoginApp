//
//  Person.swift
//  LoginApp
//
//  Created by Denis Kitaev on 04.04.2023.
//

struct Person {
    let image: String
    let name: String
    let dateOfBirth: String
    let placeOfBirth: String
    let interests: [String]
    let codingExperience: String
    
    func showBio() -> String {
        "Person \(name), born \(dateOfBirth), in \(placeOfBirth), interested in \(interests.formatted()), has a coding experience of \(codingExperience)"
    }
}
