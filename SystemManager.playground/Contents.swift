let math = Subject(name: "Matematicas", teacherName: "John Wick", level: SubjectLevel.intermediate)
let spanish = Subject(name: "Español", teacherName: "Tony Stark", level: .basic)
let biology = Subject(name: "Biologia", teacherName: "Peter Parker", level: .intermediate)
let economy = Subject(name: "Economia", teacherName: "Mario Bros", level: .intermediate)

let s1 = Student(name: "Bryan Guapacha", age: 25, email: "bryangf@gmail.com", subjects: [], scores: [])
let s2 = AdvancedStudent(name: "Paola Osorio", age: 29, email: "pao@gmail.com", subjects: [], scores: [], extraPoints: 10)

let service = StudentsManager(students: [])
service.insertStudent(s1)
service.insertStudent(s2)

service.asignSubjectToStudent(subject: math, score: 80, student: s1)
service.asignSubjectToStudent(subject: spanish, score: 70, student: s1)
service.asignSubjectToStudent(subject: biology, score: 90, student: s1)

service.asignSubjectToStudent(subject: math, score: 90, student: s2)
service.asignSubjectToStudent(subject: spanish, score: 60, student: s2)
service.asignSubjectToStudent(subject: economy, score: 60, student: s2)

service.generateStudentsReport()

let average = service.getAverages()
let subject = service.getCoursedSubjects()

 
