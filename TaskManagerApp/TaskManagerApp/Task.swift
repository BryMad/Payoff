//
//  Task.swift
//  TaskManager


import Foundation

struct Task: Identifiable, Hashable {
    
    let id = UUID()
    var title: String
    var isCompleted: Bool
    var dueDate: Date
    var details: String?
    
    init(title: String, isCompleted: Bool = false, dueDate: Date = Date(), details: String? = nil) {
        self.title = title
        self.isCompleted = isCompleted
        self.dueDate = dueDate
        self.details = details
    }
    
    static func example() -> Task {
        Task(title: "Buy milk", dueDate: Calendar.current.date(byAdding: .day, value: 2, to: Date())!)
    }
    
    static func examples() -> [Task] {
        [
           Task(title: "Bank robbery scene"),
           Task(title: "Fergle and Sally fall in love", isCompleted: true),
           Task(title: "Bomb diffusion scene", dueDate: Calendar.current.date(byAdding: .day, value: 1, to: Date())!),
           Task(title: "Beach invasion scene"),
           Task(title: "Fergle and Sally break up", isCompleted: true),
           Task(title: "Car chase sequence"),
           Task(title: "Fergle goes to school", isCompleted: true, dueDate: Calendar.current.date(byAdding: .day, value: 4, to: Date())!),
           Task(title: "Grand Finale Action sequence")
       ]
        
    }
    
}
