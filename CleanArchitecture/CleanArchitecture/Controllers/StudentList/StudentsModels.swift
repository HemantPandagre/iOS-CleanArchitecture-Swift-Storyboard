//
//  StudentListModels.swift
//  CleanArchitecture
//
//  Created by Hemant Pandagre on 13/06/22.
//

import Foundation

struct Student: Equatable {
    var firstName: String
    var lastName: String?
    var age: Int
    var address: String?
    var phoneNumber: Int?
    var email: String?
}

enum StudentList {
    struct Request {}
    
    struct Response { // Server model
        var students: [Student]
        var isError: Bool
        var errorMessage: String?
    }
    
    struct ViewModel { // Display model on ViewController
        struct DisplayedStudent {
            var fullName: String
            var age: String
            var phoneNumber: String
            var email: String
        }
        var displayedStudent: [DisplayedStudent]?
        var isError: Bool
        var errorMessage: String?
    }
}

