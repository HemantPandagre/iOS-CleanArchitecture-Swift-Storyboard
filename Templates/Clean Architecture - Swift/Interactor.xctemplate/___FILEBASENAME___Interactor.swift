//
//  ___FILENAME___
//  ___PROJECTNAME___
//  Created by ___FULLUSERNAME___ on ___DATE___.
//
//  Note: The '___VARIABLE_sceneName___Interactor' file is responsible for the business logic.
//

import Foundation

//==================
// MARK: - Protocol
//==================
protocol ___VARIABLE_sceneName___BussinessLogic {
   
}

protocol ___VARIABLE_sceneName___DataStore {
   
}


//====================
// MARK: - Interactor
//====================
class ___VARIABLE_sceneName___Interactor: ___VARIABLE_sceneName___BussinessLogic, ___VARIABLE_sceneName___DataStore {
    var worker = ___VARIABLE_sceneName___Worker()
    var presenter: ___VARIABLE_sceneName___PresentationLogic?
}
