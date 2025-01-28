//
//  AdvancedStudent.swift
//  
//
//  Created by Bryan Alexander Guapacha Florez on 22/01/25.
//

import Foundation

/*
 Al inicializar la clase vemos que depues del nombre de la clase
 tenemos ": Student"
 
 Esto significa que estamos utilizando la herencia, es decir, estamos heredando
 las caracteristicas y comportamientos que ya hemos implementado en la clase Student anteriormente,
 es por esto que al inicializar el contructor llamamos al super para inicializar los paremetros que vienen
 de la clase Student.
 */
public class AdvancedStudent: Student {
    let extraPoints: Double
    
    public init(name: String, age: Int, email: String, subjects: [Subject], scores: [Double], extraPoints: Double) {
        self.extraPoints = extraPoints
        super.init(name: name, age: age, email: email, subjects: subjects, scores: scores)
    }
    
    /*
     Lo que estamos haciendo aqui es sobreescribiendo la funcion studentDescription que ya habiamos
     implementado anteriormente en la Clase student. Pero queremos que tenga un comportamiento un poco diferente
     al original, entonces aqui podemos implementar esos cambios en la funcion.
     
     Nota: Para poder sobreescribir la funcion debemos agregar la palabra "override" antes la palabra "func"
     */
    public override func describe() -> String {
        var desc = """
        ---------------------------
        Informacion del estudiante (Avanzado):
        ---------------------------
        # Nombre del estudiante: \(name)
        # Edad: \(age)
        # Email: \(email)
        # Puntos extra: \(extraPoints)
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
}
