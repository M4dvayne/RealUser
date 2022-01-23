//
//  Person.swift
//  RealUser
//
//  Created by Вячеслав Кремнев on 1/22/22.
//


struct User {
    
    let user: Login
    let password: Password
    let persons: [UserData]
    let information: SegmentedInfo
    
//    static func getUser() -> [User] {
//        [User()
//        ]
//    }
}



struct UserData {
    var login: Login
    var password : Password
}

//Логины пользователей

enum Login {
    case myLogin
    case elonLogin
    
    var logins: String {
        switch self {
        
        case .myLogin:
            return "Vyacheslav"
        case .elonLogin:
           return "Elon"
        }
    }
}

//Пароли пользователей

enum Password {
    case kremnev
    case musk
    
    var passwords: String {
        switch self {
        
        case .kremnev:
            return "Kremnev"
        case .musk:
            return "ElonMusk"
        }
    }
}

//Разделы для сегментов

enum SegmentedInfo {
    
    case person
    case education
    case hobbies
    
    var segmentDescription: String {
        
        switch self {
        
        case .person:
            return "Здесь находится описание данных о пользователе."
        case .education:
            return "Здесь находится описание данных об образовании пользователя."
        case .hobbies:
            return "Здесь находится описание данных об увлечениях пользователя."
        }
    }
}



