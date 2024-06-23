//
//  User.swift
//  Appetizers
//
//  Created by Danil Edkin on 23.06.2024.
//

import Foundation


struct User: Codable {
    var firstName       = ""
    var lastName        = ""
    var email           = ""
    var birthDate       = Date()
    var extraNapkins    = false
    var frequentRefills = false
}
