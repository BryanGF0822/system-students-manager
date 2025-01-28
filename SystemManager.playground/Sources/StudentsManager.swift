//
//  StudentsManager.swift
//  
//
//  Created by Bryan Alexander Guapacha Florez on 23/01/25.
//

import Foundation

public protocol Manageable {
    func insertStudent(_ student: Student)
    func asignSubjectToStudent(subject: Subject, score: Double, student: Student)
    func generateStudentsReport()
    func getApprovedStudents() -> [Student]
    func getReprobedStudents() -> [Student]
    func getAverages() -> [Double]
    func getTotalAverages() -> Double
    func getCoursedSubjects() -> Set<Subject>
}

public class StudentsManager: Manageable {
        
    var students: [Student]
    
    public init(students: [Student]) {
        self.students = students
    }
    
    public func insertStudent(_ student: Student) {
        students.append(student)
    }
    
    public func asignSubjectToStudent(subject: Subject, score: Double, student: Student) {
        for s in students {
            if student.email.elementsEqual(s.email) {
                s.assingSubject(subject: subject, score: score)
            }
        }
    }
    
    public func generateStudentsReport() {
        for student in students {
            print(student.describe())
        }
    }
    
    // Funcion Filter
    // Sirve para filtrar una lista dada la condicion que le pongamos.
    public func getApprovedStudents() -> [Student] {
        return students.filter { student in
            return student.isApproved()
        }
    }
    
    public func getReprobedStudents() -> [Student] {
        return students.filter { student in
            return !student.isApproved()
        }
    }
    
    // Funcion Map
    // Nos permite mapear una lista dentro de otra de otro tipo
    // En este caso vamos a mapear cada estudiante con su promedio.
    public func getAverages() -> [Double] {
        return students.map { student in
            return student.getAverageScore()
        }
    }
    
    public func getTotalAverages() -> Double {
        let avr = getAverages()
        let sum = avr.reduce(0.0, +)
        return sum / Double(avr.count)
    }
    
    // Funcion Reduce
    // Reduce un arreglo en un valor unico final
    // En este caso va a ser un valor de tipo set de materias
    public func getCoursedSubjects() -> Set<Subject> {
        return students.reduce(into: Set<Subject>()) { result, student in
            for subject in student.subjects {
                result.insert(subject)
            }
        }
    }
}
