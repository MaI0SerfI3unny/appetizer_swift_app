//
//  ApiError.swift
//  Appetizers
//
//  Created by Danil Edkin on 02.06.2024.
//

import Foundation

enum ApiError: Error{
    case invalidUrl
    case invalidResponse
    case invalidData
    case unableToComplete
}
