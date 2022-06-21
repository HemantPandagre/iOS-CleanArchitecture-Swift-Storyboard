//
//  StudentDetailsConfigurator.swift
//  CleanArchitecture
//
//  Created by Hemant Pandagre on 13/06/22.
//

import Foundation


class StudentDetailsConfigurator: NSObject {
    static let shared = StudentDetailsConfigurator()
    
    private override init() {}
    
    func configure(_ viewController: StudentDetailsVC) {
        let interactor = StudentDetailsInteractor()
        let presenter = StudentDetailsPresenter()
        let router = StudentDetailsRouter()
        interactor.presenter = presenter
        presenter.viewcontroller = viewController
        router.viewcontroller = viewController
        router.dataStore = interactor
        viewController.router = router
        viewController.interactor = interactor
        
        
    }
    
    
}
