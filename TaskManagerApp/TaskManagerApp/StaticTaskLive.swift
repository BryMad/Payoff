//
//  TaskListView.swift
//  TaskManager
//

import SwiftUI

struct StaticTaskListView: View {
    
    let title: String
    let tasks: [Task]
    
    var body: some View {
        List(tasks) { task in
            HStack {
                Image(systemName: "circle")
                Text(task.title)
            }
        }
        
    }
}

#Preview {
    StaticTaskListView(title: "All", tasks: Task.examples())
}
