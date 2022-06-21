//
//  ___FILENAME___
//  ___PROJECTNAME___
//  Created by ___FULLUSERNAME___ on ___DATE___.
//
//  Note: The '___VARIABLE_sceneName___Router' file is responsible for navigation process and data passing.
//

import Foundation

//==================
// MARK: - Protocol
//==================
protocol ___VARIABLE_sceneName___RoutingLogic {
    func routeToNextViewcontroller()
}

protocol ___VARIABLE_sceneName___DataPassing {
    var dataStore: ___VARIABLE_sceneName___DataStore? { get }
}

//==================
// MARK: - Router
//==================
class ___VARIABLE_sceneName___Router: NSObject, ___VARIABLE_sceneName___RoutingLogic, ___VARIABLE_sceneName___DataPassing {
    weak var viewcontroller: ___VARIABLE_sceneName___ViewController?
    var dataStore: ___VARIABLE_sceneName___DataStore?

    func routeToNextViewcontroller() {
       
    }
}
