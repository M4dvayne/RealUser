//
//  Person.swift
//  RealUser
//
//  Created by Вячеслав Кремнев on 1/22/22.
//


struct User {
    
    let login: PersonalData
    let password: PersonalData
    let personsInfo: UserInfo
    let person: Person

    
    static func getUser() -> User {
        
        User(login: .login, password: .password, personsInfo: .aboutPerson, person: Person.getPerson())
        
    }

//информация о пользователе

    struct Person {
        let name: String
        let surname: String
        
        static func getPerson() -> Person {
            Person(name: "Vyacheslav", surname: "Kremnev")
        }
    }
    
enum UserInfo {
    
    case aboutPerson
    case education
    case hobbies
    
    var userData: String {
        switch self {
        
        
        case .aboutPerson:
            return "Information about person"
        case .education:
           return "Information about education"
        case .hobbies:
           return "Information about hobbies"
        }
    }
}

//персональная информация пользователя

enum PersonalData {
    case login
    case password
    
    var privateInfo: String {
        switch self {
        
        
        case .login:
            return "Vyacheslav"
        case .password:
            return "28111992"
        }
    }
}

   
    

}


