//
//  StudentDetailsInteractor.swift
//  CleanArchitecture
//
//  Created by Hemant Pandagre on 13/06/22.
//

import Foundation


protocol StudentDetailsBussinessLogic {
    func getStudentsDetails()
    func updateStudentDetails(student: Student)
}

protocol StudentDetailsDataStore {
    var student: Student! {get set}
}

class StudentDetailsInteractor: StudentDetailsBussinessLogic, StudentDetailsDataStore {
    var student: Student!
    var presenter: StudentDetailsPresentationLogic?
    
    func getStudentsDetails() {
        presenter?.presentStudentDetails(student: student)
    }
    
    func updateStudentDetails(student: Student) {
        guard !student.firstName.isEmpty else {
            presenter?.presentErrorMessage(message: "First name should not be blank.")
            return
        }
        
        guard let lastName = student.lastName, !lastName.isEmpty else {
            presenter?.presentErrorMessage(message: "Last name should not be blank.")
            return
        }
        
        guard (student.age != 0) else {
            presenter?.presentErrorMessage(message: "Age should not be blank.")
            return
        }
        
        guard let phoneNumber = student.phoneNumber, (phoneNumber != 0) else {
            presenter?.presentErrorMessage(message: "Phone number should not be blank.")
            return
        }
        
        guard let email = student.email, !email.isEmpty else {
            presenter?.presentErrorMessage(message: "email should not be blank.")
            return
        }
        
        self.student = student
        presenter?.updateStudentDetails(student: student)
    }
}
