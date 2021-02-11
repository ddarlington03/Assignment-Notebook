//
//  AssignmentList.swift
//  Assignment Notebook
//
//  Created by Darren Darlington on 2/10/21.
//

import Foundation

class AssignmentList: ObservableObject {
    @Published var assignmentItem = [AssignmentItem(course: "History", description: "Learn about past", dueDate: Date()),
                                     AssignmentItem(course: "Math", description: "Learn to use numbers", dueDate: Date()),
                                     AssignmentItem(course: "Computer Science", description: "Learn to code", dueDate: Date())]
}
