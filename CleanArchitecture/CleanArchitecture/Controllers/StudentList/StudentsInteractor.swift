//
//  StudentListInteractor.swift
//  CleanArchitecture
//
//  Created by Hemant Pandagre on 13/06/22.
//

import Foundation

protocol StudentListBussinessLogic {
    func getStudentsList()
    func updateListData(student: Student?)
    func selectedStudent(index: Int)
    func filterUserWhichAgeGreaterThan(age: Int)
}

protocol StudentDataStore {
    var selectedStudent: Student? { get set }
}

class StudentInteractor: StudentListBussinessLogic, StudentDataStore {
    var selectedStudent: Student?
    var students: [Student]?
    var worker = StudentsWorker()
    var presenter: StudentsPresentationLogic?
    
    func getStudentsList() {
        worker.getStudentList {[weak self] studentList in
            self?.students = studentList
            self?.present()
        } failure: { error in
            self.presenter?.presentError(errorMessage: "Something went wrong!!")
        }
    }
    
    func updateListData(student: Student?) {
        if let stuObj = selectedStudent,((students?.isEmpty) != nil), let index = students!.firstIndex(of: stuObj), let udpatedStudent = student {
            students![index] = udpatedStudent
            present()
        }
    }
    
    private func present() {
        self.presenter?.presentStudents(students: self.students ?? [])
    }
    
    func selectedStudent(index: Int) {
        self.selectedStudent = students?[index]
    }
    
    func filterUserWhichAgeGreaterThan(age: Int) {
        
    }
}
