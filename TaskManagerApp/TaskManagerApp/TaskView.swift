//
//  TaskView.swift
//  
//

import SwiftUI

struct TaskView: View {
    
    @Binding var task: Task
    @Binding var selectedTask: Task?
    @Binding var inspectorIsShown: Bool
    
    var body: some View {
        HStack {
            Image(systemName: "circle")
                .onTapGesture {
                    task.isCompleted.toggle()
                }
            
            TextField("New Task", text: $task.title)
                .textFieldStyle(.plain)
            
            Button(action: {
                inspectorIsShown = true
                selectedTask = task
            }, label: {
                Text("More")
            })
        }
    }
}

#Preview {
    TaskView(task: .constant(Task.example()),
             selectedTask: .constant(nil), inspectorIsShown: .constant(false))
        .padding()
}
