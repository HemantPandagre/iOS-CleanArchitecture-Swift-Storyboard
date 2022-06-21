//
//  StudentDetailsVC.swift
//  CleanArchitecture
//
//  Created by Hemant Pandagre on 13/06/22.
//

import Foundation
import UIKit

protocol StudentDetailsDisplayProtocol: AnyObject {
    func displayDetails(viewModel: StudentDetails.ViewModel)
    func displayErrorMessage(message: String)
    func updateStudentDetails(student: Student)
}

class StudentDetailsVC: UIViewController, Storyboarded {
    @IBOutlet weak var firstNameField: UITextField!
    @IBOutlet weak var lastNameField: UITextField!
    @IBOutlet weak var ageField: UITextField!
    @IBOutlet weak var phoneField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    
    var router: (NSObjectProtocol & StudentDetailsRoutingLogic & StudentDetailsDataPassing)?
    var interactor: StudentDetailsBussinessLogic?
    var updateCallback: ((Bool, Student)->(Void))?
    
    //=================
    // MARK: Setup
    //=================
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    private func setup() {
        StudentDetailsConfigurator.shared.configure(self)
    }
    
    deinit {
        print("Deinit Student Details viewcontroller")
    }
    
    //=================================
    // MARK: - Viewcontroller lifecycle
    //=================================
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationSetup()
        self.loadData()
    }
    
    private func navigationSetup() {
        self.navigationItem.title = "Details"
    }
    
    private func loadData() {
        interactor?.getStudentsDetails()
    }
    
    @IBAction func btnSavePressed(_ sender: UIButton) {
        let fName = firstNameField.text ?? ""
        let lName = lastNameField.text ?? ""
        let age = Int(ageField.text ?? "0") ?? 0
        let address = ""  //interactor.student?.address ?? ""
        let phone = Int(phoneField.text ?? "0") ?? 0
        let email = emailField.text ?? ""
        let updatedStudent = Student(firstName: fName, lastName: lName, age: age, address: address, phoneNumber: phone, email: email)
        interactor?.updateStudentDetails(student: updatedStudent)
    }
}

//======================================
// MARK: - StudentDetailsDisplayProtocol
//======================================
extension StudentDetailsVC: StudentDetailsDisplayProtocol {
    func displayDetails(viewModel: StudentDetails.ViewModel) {
        let student = viewModel.details
        firstNameField.text = student.firstName
        lastNameField.text = student.lastName
        ageField.text = student.age
        phoneField.text = student.phoneNumber
        emailField.text = student.email
    }
    
    func displayErrorMessage(message: String) {
        errorLabel.text = message
    }
    
    func updateStudentDetails(student: Student) {
        router?.redirectToBack()
    }
}
