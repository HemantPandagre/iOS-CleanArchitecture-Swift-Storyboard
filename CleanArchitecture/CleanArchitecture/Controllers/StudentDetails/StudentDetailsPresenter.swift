//
//  StudentDetailsPresenter.swift
//  CleanArchitecture
//
//  Created by Hemant Pandagre on 13/06/22.
//

import Foundation

protocol StudentDetailsPresentationLogic {
    func presentStudentDetails(student: Student)
    func presentErrorMessage(message: String)
    func updateStudentDetails(student: Student)
}

class StudentDetailsPresenter: StudentDetailsPresentationLogic {
    weak var viewcontroller: StudentDetailsDisplayProtocol?
    
    func presentStudentDetails(student: Student) {
        let firstName = student.firstName
        let lastName = (student.lastName ?? "")
        let age = student.age.description
        let phoneNumber = student.phoneNumber?.description ?? "-"
        let email = student.email?.description ?? "-"
        let studentDetails = StudentDetails.ViewModel.Details(firstName: firstName, lastName: lastName, age: age, phoneNumber: phoneNumber, email: email)
        let viewModel = StudentDetails.ViewModel(details: studentDetails, isError: false, errorMessage: "")
        viewcontroller?.displayDetails(viewModel: viewModel)
    }
    
    func presentErrorMessage(message: String) {
        viewcontroller?.displayErrorMessage(message: message)
    }
    
    func updateStudentDetails(student: Student) {
        viewcontroller?.updateStudentDetails(student: student)
    }
}
