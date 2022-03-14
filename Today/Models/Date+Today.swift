//
//  Date+Today.swift
//  Today
//
//  Created by Admin on 13.03.2022.
//

import Foundation

extension Date {
    var dayAndTimeText: String {
        let timeText = formatted(date: .omitted, time: .shortened)
        if Locale.current.calendar.isDateInToday(self) {
            let timeFormat = NSLocalizedString("Сегодня в %@", comment: "Сегодня в формате времени строка")
            return String(format: timeFormat, timeText)
        } else {
            let dateText = formatted(.dateTime.month(.abbreviated).day())
            let dateAndTimeFormat = NSLocalizedString("%@ в %@", comment: "Строка формата даты и времени")
            return String(format: dateAndTimeFormat, dateText, timeText)
        }
    }
    
    var dayText: String {
        if Locale.current.calendar.isDateInToday(self) {
            return NSLocalizedString("Сегодня", comment: "Описание сегодняшней даты")
        } else {
            return formatted(.dateTime.month().day().weekday(.wide))
        }
    }
}
