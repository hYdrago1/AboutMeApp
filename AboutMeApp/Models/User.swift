//
//  User.swift
//  AboutMeApp
//
//  Created by Ivan Honcharov on 25.07.25.
//

import Foundation
struct User {
    let login: String
    let password: String
    let profile: AboutMe
    
    static let myData = User(
        login: "admin",
        password: "1234",
        profile: AboutMe(
            surname: "Honcharov",
            name: "Ivan",
            age: "18",
            bio: """
                Моё имя Иван Гончаров, мне 18 лет.
                Родился в Крыму, город Симферополь,
                после переехал в Киев, и от туда на запад Германии
                в город Koeln, знаменитым своим на весь мир собором.
                В планах стать iOS разработчиком и
                пилить свои приложения в App Store
                """
        )
    )
}
