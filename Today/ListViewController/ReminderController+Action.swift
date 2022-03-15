//
//  ReminderController+Action.swift
//  Today
//
//  Created by Admin on 15.03.2022.
//

import Foundation

extension ReminderListViewController {
    @objc func didPressDoneButton(_ sender: ReminderDoneButton) {
        guard let id = sender.id else { return }
        completeReminder(with: id)
    }
}
