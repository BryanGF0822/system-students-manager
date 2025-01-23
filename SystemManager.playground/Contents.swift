let math = Subject(name: "Math", teacherName: "John Wick", minimumScore: 70)
//let desc = math.subjectDescription()
//print(desc)
let s1 = Student(name: "Bryan Guapacha", age: 25, email: "bryangf@gmail.com", subjets: [math], scores: [70])
let s2 = AdvancedStudent(name: "Paola Osorio", age: 29, email: "pao@gmail.com", subjets: [math], scores: [80], extraPoints: 10)

let descS1 = s1.studentDescription()
let descS2 = s2.studentDescription()

print(descS1)
print(descS2)   
