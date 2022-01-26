//
//  Person.swift
//  RealUser
//
//  Created by Вячеслав Кремнев on 1/22/22.
//

struct User {
    
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(
            login: "Vyacheslav",
            password: "28111992",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let personsInfo: [String]
    
    static func getPerson() -> Person {
        Person(
            name: "Vyacheslav",
            surname: "Kremnev",
            personsInfo: [
                "- Имя: Вячеслав.\n - Пол: Мужской.\n - Рост: 176 см.\n - Вес: 75 кг.",
                "- Школьное образование: 2000 г. - 2009 г.\n - Мореходный колледж им Г.Я. Седова: 2009 г. - 2013 г.\n - SwiftBook: 2021 - ♾",
                "- Поиск с металлоискателем.\n - Гитара.\n - Английский язык.\n - Компьютерные игры."
            ]
        )
    }
}




