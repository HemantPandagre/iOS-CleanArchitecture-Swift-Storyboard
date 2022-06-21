//
//  StudentListRouter.swift
//  CleanArchitecture
//
//  Created by Hemant Pandagre on 13/06/22.
//

import Foundation

protocol StudentRoutingLogic {
    func routeToDetails()
}

protocol StudentDataPassing {
    var dataStore: StudentDataStore? { get }
}

class StudentsRouter: NSObject, StudentRoutingLogic, StudentDataPassing {
    weak var viewcontroller: StudentsVC?
    var dataStore: StudentDataStore?

    func routeToDetails() {
        let vc = StudentDetailsVC.instantiate()
        vc.router?.dataStore?.student = dataStore?.selectedStudent
        vc.router?.delegate =  viewcontroller
        viewcontroller?.navigationController?.pushViewController(vc, animated: true)
    }
}
