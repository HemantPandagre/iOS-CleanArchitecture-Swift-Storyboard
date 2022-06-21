//
//  StudentListConfigurator.swift
//  CleanArchitecture
//
//  Created by Hemant Pandagre on 13/06/22.
//

import Foundation

class StudentListConfigurator: NSObject {
    static let shared = StudentListConfigurator()
    
    private override init() {}
    
    func configure(_ viewController: StudentsVC) {
        let interactor = StudentInteractor()
        let presenter = StudentsPresenter()
        let router = StudentsRouter()
        viewController.interactor = interactor
        viewController.router = router
        interactor.presenter = presenter
        presenter.viewcontroller = viewController
        router.viewcontroller = viewController
        router.dataStore = interactor
    }
}
