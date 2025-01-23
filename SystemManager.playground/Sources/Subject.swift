//
//  Subject.swift
//  
//
//  Created by Bryan Alexander Guapacha Florez on 20/01/25.
//

/*
 Los structs (estructuras) en Swift son tipos de datos que permiten agrupar datos y funcionalidades.
 Se utilizan para definir un modelo de datos, encapsulando propiedades (variables) y métodos (funciones) relacionados.

 Las principales diferencias entre struct y class son:

 Tipo de referencia vs. tipo de valor: Los structs son tipos de valor, lo que significa que se copian al asignarlos a una nueva variable o al pasarlos a una función. Las classes son tipos de referencia, lo que significa que se comparten entre las variables.

 Herencia: Las classes pueden heredar de otras classes, mientras que los structs no pueden.

 Inicializadores: Al crear un struct, Swift proporciona automáticamente un inicializador, mientras que las classes necesitan un inicializador explícito si no se define uno.

 Estos conceptos son fundamentales en la programación orientada a objetos y ayudan a estructurar el código de manera efectiva.
 */

/*
 La Programación Orientada a Objetos (POO) es un paradigma que organiza el código en "objetos" que representan entidades del mundo real. Sus principales ventajas incluyen:

 Reutilización de código: Las clases permiten crear instancias reutilizables.
 Mantenimiento: Facilita actualizar y depurar el código, haciéndolo más comprensible.
 Abstracción: Permite modelar problemas complejos de forma más sencilla.
 Desventajas:

 Curva de aprendizaje: Puede ser complicado para principiantes.
 Sobrecarga de memoria: Los objetos pueden consumir más recursos.
 Se utiliza en lenguajes como Swift, Java y Python para estructurar aplicaciones mediante clases y objetos, facilitando la resolución de problemas complejos.
 */

import Foundation

public struct Subject {
    let name: String
    let teacherName: String
    let minimumScore: Double
    
    public init(name: String, teacherName: String, minimumScore: Double) {
        self.name = name
        self.teacherName = teacherName
        self.minimumScore = minimumScore
    }
    
    public func isPassed(score: Double) -> Bool {
        return score >= minimumScore
    }
    
    public func subjectDescription() -> String {
        return """
        ---------------------------
        Nombre del curso: \(name)
        Profesor: \(teacherName)
        Puntaje minimo para pasar: \(minimumScore)
        """
    }
}
