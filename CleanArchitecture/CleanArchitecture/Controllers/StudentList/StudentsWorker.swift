//
//  StudentListWorker.swift
//  CleanArchitecture
//
//  Created by Hemant Pandagre on 13/06/22.
//

import Foundation

typealias responseSuccess = (_ response: [Student]) ->()
typealias responseFailure = (_ response: Error) ->()

class StudentsWorker {
    func getStudentList(with success: @escaping responseSuccess, failure: @escaping responseFailure) {
        let stu1 = Student(firstName: "Liam", lastName: "Daniel", age: 23, address: "Austrailia", phoneNumber: 5678349201, email: "Liam@gmail.com")
        let stu2 = Student(firstName: "Michael", lastName: "Mason", age: 23, address: "Iran", phoneNumber: 5678349201, email: "Michael@gmail.com")
        let stu3 = Student(firstName: "Sebastian", lastName: "Ethan", age: 23, address: "Austrailia", phoneNumber: 5678349201, email: "Sebastian@gmail.com")
        let stu4 = Student(firstName: "Logan", lastName: "Samuel", age: 23, address: "United Kingdom", phoneNumber: 5678349201, email: "Logan@gmail.com")
        let stu5 = Student(firstName: "Jacob", lastName: "Aiden", age: 23, address: "India", phoneNumber: 5678349201, email: "Jacob@gmail.com")
        let stu6 = Student(firstName: "John", lastName: "Joseph", age: 23, address: "United State", phoneNumber: 5678349201, email: "John@gmail.com")
        let stu7 = Student(firstName: "Wyatt", lastName: "Leo", age: 23, address: "Malaysia", phoneNumber: 5678349201, email: "Wyatt@gmail.com")
        let students = [stu1, stu2, stu3, stu4, stu5, stu6, stu7]
        success(students)
    }
}
