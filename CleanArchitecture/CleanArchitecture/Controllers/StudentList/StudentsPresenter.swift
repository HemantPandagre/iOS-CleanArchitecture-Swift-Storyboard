//
//  StudentListPresenter.swift
//  CleanArchitecture
//
//  Created by Hemant Pandagre on 13/06/22.
//

import Foundation

protocol StudentsPresentationLogic {
    func presentStudents(students: [Student])
    func presentError(errorMessage: String)
}

class StudentsPresenter: StudentsPresentationLogic {
    weak var viewcontroller: StudentsDisplayLogic?
    
    func presentStudents(students: [Student]) {
       
        var modifiedStudents = [StudentList.ViewModel.DisplayedStudent]()
        
        for student in students {
            let fullName = student.firstName + " " + (student.lastName ?? "")
            let age = student.age.description
            let phoneNumber = student.phoneNumber?.description ?? "-"
            let email = student.email?.description ?? "-"
            let displayStudent = StudentList.ViewModel.DisplayedStudent(fullName: fullName, age: age, phoneNumber: phoneNumber, email: email)
            modifiedStudents.append(displayStudent)
        }
        
        let viewModel = StudentList.ViewModel(displayedStudent: modifiedStudents, isError: false, errorMessage: "Success")
        
        viewcontroller?.displayStudents(data: viewModel)
    }
    
    func presentError(errorMessage: String) {
        viewcontroller?.displayErrorMessage(message: errorMessage)
    }
}
