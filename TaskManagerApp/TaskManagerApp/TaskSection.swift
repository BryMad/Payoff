//
//  TaskSection.swift
//  TaskManager
//

import Foundation

enum TaskSection: Identifiable, CaseIterable, Hashable {
    
    case all
    case done
    case upcoming
    case list(TaskGroup)
    
    var id: String {
        switch self {
            case .all:
                "all"
            case .done:
                "done"
            case .upcoming:
                "upcoming"
            case .list(let taskGroup):
                taskGroup.id.uuidString
        }
    }
    
    var displayName: String {
        switch self {
            case .all:
                "All"
            case .done:
                "Fergle Plot"
            case .upcoming:
                "Action"
            case .list(let taskGroup):
                taskGroup.title
        }
      
    }
    
    var iconName: String {
        switch self {
            case .all:
                "circle"
            case .done:
                "circle"
            case .upcoming:
                "circle"
            case .list(_):
                "circle"
        }
    }
    
    static var allCases: [TaskSection] {
        [.all, .done, .upcoming]
    }
    
    static func == (lhs: TaskSection, rhs: TaskSection) -> Bool {
        lhs.id == rhs.id
    }
}
