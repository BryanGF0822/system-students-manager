//
//  Student.swift
//  
//
//  Created by Bryan Alexander Guapacha Florez on 21/01/25.
//

import Foundation

public class Student {
    let name: String
    let age: Int
    let email: String
    let subjets: [Subject]
    let scores: [Double]
    
    public init(name: String, age: Int, email: String, subjets: [Subject], scores: [Double]) {
        self.name = name
        self.age = age
        self.email = email
        self.subjets = subjets
        self.scores = scores
    }
    
    public func studentDescription() -> String {
        var desc = """
        ---------------------------
        Informacion del estudiante:
        ---------------------------
        # Nombre del estudiante: \(name)
        # Edad: \(age)
        # Email: \(email)
        # Materias que esta cursando:
        """
        for subjet in subjets {
            desc += "\n\(subjet.subjectDescription())"
        }
        desc += """
        \n---------------------------
        """
        return desc
    }
}
