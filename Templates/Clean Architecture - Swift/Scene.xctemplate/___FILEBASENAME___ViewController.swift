//
//  ___FILENAME___
//  ___PROJECTNAME___
//  Created by ___FULLUSERNAME___ on ___DATE___.
//
//  Note: The '___VARIABLE_sceneName___ViewController' file is responsible for managing the lifecycle of the controller and display the logic.
//

import Foundation
import UIKit

//==================
// MARK: - Protocol
//==================
protocol ___VARIABLE_sceneName___DisplayLogic: AnyObject {
   
}

//========================
// MARK: - ViewController
//========================
class ___VARIABLE_sceneName___ViewController: UIViewController {
    var interactor: ___VARIABLE_sceneName___BussinessLogic?
    var router: (NSObjectProtocol & ___VARIABLE_sceneName___RoutingLogic & ___VARIABLE_sceneName___DataPassing)?
    
    //MARK: - Setup
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    private func setup() {
        ___VARIABLE_sceneName___Configurator.shared.configure(self)
    }
    
    //MARK: - Lifecycle of the viewcontroller
    override func viewDidLoad() {
        
    }
    
    deinit {
        print("Deinit ___VARIABLE_sceneName___ViewController")
    }
}


//===================
// MARK: - Extention
//===================

extension ___VARIABLE_sceneName___ViewController: ___VARIABLE_sceneName___DisplayLogic {
    
}
