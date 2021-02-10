//
//  ContentView.swift
//  Assignment Notebook
//
//  Created by Darren Darlington on 2/8/21.
//

import SwiftUI

struct ContentView: View {
    @State var assignmentItem = [AssignmentItem(course: "History", description: "Learn about past", dueDate: Date()),
                                 AssignmentItem(course: "Math", description: "Learn to use numbers", dueDate: Date()),
                                 AssignmentItem(course: "Computer Science", description: "Learn to code", dueDate: Date())]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(assignmentItem) { item in
                    HStack {
                        VStack (alignment: .leading) {
                            Text(item.course)
                                .font(.headline)
                            Text(item.description)
                        }
                        Spacer()
                        Text(item.dueDate, style: .date)
                    }
                }
                .navigationBarTitle("Courses")
            }
        }
    }
        
        
        
        struct ContentView_Previews: PreviewProvider {
            static var previews: some View {
                ContentView()
            }
        }
        
        struct AssignmentItem: Identifiable {
            var id = UUID()
            var course = String()
            var description = String()
            var dueDate = Date()
        }
    }
