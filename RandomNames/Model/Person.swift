//
//  Person.swift
//  RandomNames
//
//  Created by Александр Бехтер on 10.06.2020.
//  Copyright © 2020 Alexander Bekhter. All rights reserved.
//

struct Person {
    var names: String
    var secondName: String
    var eMails: String
    var phoneNumbers: String
    var fullNames: String {
        "\(names)  \(secondName)"
    }
}

extension Person {
    static func getNamed() -> [Person] {
        var persons = [Person]()
        let dataManeg = DataManeger()
        let names = dataManeg.names.shuffled()
        let lastnames = dataManeg.secondNames.shuffled()
        let emails = dataManeg.emails.shuffled()
        let phoneNumbers = dataManeg.phones.shuffled()
        
        
        for item in 0...8 {
            persons.append(Person(names: names[item],
                                  secondName: lastnames[item],
                                  eMails: emails[item],
                                  phoneNumbers: phoneNumbers[item]))
        }
        return persons
    }
}
