//
//  ViewController.swift
//  CleanArchitecture
//
//  Created by Hemant Pandagre on 13/06/22.
//

import UIKit

protocol StudentsDisplayLogic: AnyObject {
    func displayStudents(data: StudentList.ViewModel)
    func displayErrorMessage(message: String)
}

class StudentsVC: UIViewController, Storyboarded {
    @IBOutlet weak var studentTable: UITableView!
    
    var students = [StudentList.ViewModel.DisplayedStudent]()
    var interactor: StudentListBussinessLogic?
    var router: (NSObjectProtocol & StudentRoutingLogic & StudentDataPassing)?
    
    //=================
    // MARK: - Setup
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
        StudentListConfigurator.shared.configure(self)
    }
    
    deinit {
        print("Deinit StudentList viewcontroller")
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
        self.navigationItem.title = "Students"
    }
    
    private func loadData() {
        interactor?.getStudentsList()
    }
}

//=================================
// MARK: - StudentsDisplayLogic
//=================================
extension StudentsVC: StudentsDisplayLogic {
    func displayStudents(data: StudentList.ViewModel) {
        self.students = data.displayedStudent ?? []
        self.studentTable.register(UITableViewCell.self, forCellReuseIdentifier: "CellIdentifier")
        self.studentTable.reloadData()
    }
    
    func displayErrorMessage(message: String) {
        print("Error Message:" + " " + message)
    }
}

extension StudentsVC: StudentDetailsUpdateLogic {
    func updatedStudent(student: Student?) {
        interactor?.updateListData(student: student)
    }
}

//=================================
// MARK: - Tableview delegates
//=================================
extension StudentsVC: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return students.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "CellIdentifier")
        let student = students[indexPath.row]
        let fullName = student.fullName
        let detail = "\(student.age), \(student.email), \(student.phoneNumber)"
        cell.textLabel?.text = fullName
        cell.detailTextLabel?.text = detail
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        interactor?.selectedStudent(index: indexPath.row)
        router?.routeToDetails()
    }
}


