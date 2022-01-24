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

    
    static func getUser() -> User {
        
        User(login: .login, password: .password, personsInfo: .aboutPerson)
        
    }





//информация о пользователе

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


