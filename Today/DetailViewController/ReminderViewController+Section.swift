//
//  ReminderViewController+Section.swift
//  Today
//
//  Created by Admin on 30.06.2022.
//

import Foundation

extension ReminderViewController {
    enum Section: Int, Hashable {
        case view
        case title
        case date
        case notes
        
        var name: String {
            switch self {
            case .view:
                return ""
            case .title:
                return NSLocalizedString("Заголовок", comment: "Заголовок напоминания")
            case .date:
                return NSLocalizedString("Дата", comment: "Дата напоминания")
            case .notes:
                return NSLocalizedString("Заметка", comment: "Заметка о напоминании")
            }
        }
    }
}
