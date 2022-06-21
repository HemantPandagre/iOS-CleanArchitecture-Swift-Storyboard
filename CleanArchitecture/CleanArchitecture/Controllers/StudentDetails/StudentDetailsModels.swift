//
//  StudentDetailsModels.swift
//  CleanArchitecture
//
//  Created by Hemant Pandagre on 13/06/22.
//

import Foundation

enum StudentDetails {
    
    struct Request {}
    
    struct Response {}

    struct ViewModel {
        struct Details {
            var firstName: String
            var lastName: String
            var age: String
            var phoneNumber: String
            var email: String
        }
        var details: Details
        var isError: Bool
        var errorMessage: String
    }
}
