//
//  ___FILENAME___
//  ___PROJECTNAME___
//  Created by ___FULLUSERNAME___ on ___DATE___.
//
//  Note: '___VARIABLE_sceneName___Configurator' file is responsible for configuring all components like Interactor, Presenter, Router, Worker and DataStore for transfering the data.
//

import Foundation

//======================
// MARK: - Configurator
//======================
class ___VARIABLE_sceneName___Configurator: NSObject {
    static let shared = ___VARIABLE_sceneName___Configurator()
    
    private override init() {}
    
    func configure(_ viewController: ___VARIABLE_sceneName___ViewController) {
        let interactor = ___VARIABLE_sceneName___Interactor()
        let presenter = ___VARIABLE_sceneName___Presenter()
        let router = ___VARIABLE_sceneName___Router()
        viewController.interactor = interactor
        viewController.router = router
        interactor.presenter = presenter
        presenter.viewcontroller = viewController
        router.viewcontroller = viewController
        router.dataStore = interactor
    }
}
