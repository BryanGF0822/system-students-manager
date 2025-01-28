//
//  Student.swift
//  
//
//  Created by Bryan Alexander Guapacha Florez on 21/01/25.
//

import Foundation

public class Student: Describable {
    let name: String
    let age: Int
    let email: String
    var subjects: [Subject]
    var scores: [Double]
    
    public init(name: String, age: Int, email: String, subjects: [Subject], scores: [Double]) {
        self.name = name
        self.age = age
        self.email = email
        self.subjects = subjects
        self.scores = scores
    }
    
    public func describe() -> String {
        var desc = """
        ---------------------------
        Informacion del estudiante:
        ---------------------------
        # Nombre del estudiante: \(name)
        # Edad: \(age)
        # Email: \(email)
        # Materias que esta cursando:
        """
        for subject in subjects {
            desc += "\n\(subject.describe())"
        }
        desc += """
        \n---------------------------
        """
        return desc
    }
    
    public func assingSubject(subject: Subject, score: Double) {
        self.subjects.append(subject)
        self.scores.append(score)
    }
    
    
     //A continuacion tambien dejo la solucion dada por el profesor del Curso
     
     //Debe tener por lo menos el 60% de las materias pasadas
     
    public func isApproved() -> Bool {
            var approvedSubjectsCount = 0
            for i in 0..<subjects.count {
                let subject = subjects[i]
                let score = scores[i]
                
                if subject.isPassed(score) {
                    approvedSubjectsCount += 1
                }
            }
            
            let percentage = (Double(approvedSubjectsCount) / Double(subjects.count)) * 100
            return percentage > 60
        }
     
    public func getAverageScore() -> Double {
        
        var sum: Double = 0
        for score in scores {
            sum += score
        }
        return sum / Double(scores.count)
    }
    
    /*
     
     //Esta es mi solucion de las 2 funciones anteriores.
     
     // Debe tener por lo menos el 60% de las materias pasadas.
     public func isApproved() -> Bool {
         
         var approved = 0
         var failed = 0
         
         for s in subjets {
             if s.isPassed(score: scores[subjets.firstIndex(of: s)!]) {
                 approved += 1
             }
             else {
                 failed += 1
             }
         }
         
         if Double(approved) / Double(subjets.count) >= 0.6 {
             return true
         } else {
             return false
         }
     }
     
     public func getAverageScore() -> Double {
         
         var average = 0.0
         for score in scores {
             average += score
         }
         return average / Double(scores.count)
     }
     */
}
