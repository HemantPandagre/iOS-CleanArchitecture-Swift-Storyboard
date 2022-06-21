//
//  StudentDetailsRouter.swift
//  CleanArchitecture
//
//  Created by Hemant Pandagre on 13/06/22.
//

import Foundation

protocol StudentDetailsRoutingLogic {
    func redirectToBack()
}

protocol StudentDetailsDataPassing {
    var delegate: StudentDetailsUpdateLogic? { get set }
    var dataStore: StudentDetailsDataStore? { get set }
}

protocol StudentDetailsUpdateLogic {
    func updatedStudent(student: Student?)
}

class StudentDetailsRouter: NSObject, StudentDetailsRoutingLogic, StudentDetailsDataPassing {
    weak var viewcontroller: StudentDetailsVC?
    var dataStore: StudentDetailsDataStore?
    var delegate: StudentDetailsUpdateLogic?
    
    func redirectToBack() {
        if let controller = viewcontroller {
            delegate?.updatedStudent(student: dataStore?.student)
            controller.navigationController?.popViewController(animated: true)
        }
    }
}
