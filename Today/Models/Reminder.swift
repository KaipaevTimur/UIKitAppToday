//
//  Reminder.swift
//  Today
//
//  Created by Admin on 13.03.2022.
//

import Foundation

struct Reminder: Identifiable {
    var id: String = UUID().uuidString
    var title: String
    var dueDate: Date
    var notes: String? = nil
    var isComplete: Bool = false
}

extension Array where Element == Reminder {
    func indexOfReminder(with id: Reminder.ID) -> Self.Index {
        guard let index = firstIndex(where: { $0.id == id }) else {
            fatalError()
        }
        return index
    }
}

#if DEBUG
extension Reminder {
    static var sampleData = [
        Reminder(title: "Отправить отчёт о возмещении", dueDate: Date().addingTimeInterval(800.0), notes: "Не забудь о квитанциях такси"),
        Reminder(title: "Обзор кода ", dueDate: Date().addingTimeInterval(14000.0), notes: "Проверить технические характеристики в общей папки", isComplete: true),
        Reminder(title: "Получить новые контакты", dueDate: Date().addingTimeInterval(24000.0), notes: "Оптометрист закрывается в 18:00"),
        Reminder(title: "Добавить примечание к ретроспективе ", dueDate: Date().addingTimeInterval(3200.0), notes: "Сотрудничать с менеджером проекта", isComplete: true),
        Reminder(title: "Собесодование с новым кандитатом на должность руководителя проекта", dueDate: Date().addingTimeInterval(60000.0), notes: "Обзор портфолио"),
        Reminder(title: "Смоделировать адапционный опыт", dueDate: Date().addingTimeInterval(72000.0), notes: "Думать по-другому"),
        Reminder(title: "Просмотр аналитики использования", dueDate: Date().addingTimeInterval(83000.0), notes: "Обсуди тренды с руководством"),
        Reminder(title: "Подтвердить групповое бронирование", dueDate: Date().addingTimeInterval(92500.0), notes: "Спросить об обогревателях"),
        Reminder(title: "Добавить бета-тестеров в TestFligth", dueDate: Date().addingTimeInterval(101000.0), notes: "v.9.0 выйдет в пятницу")
    ]
}
#endif
