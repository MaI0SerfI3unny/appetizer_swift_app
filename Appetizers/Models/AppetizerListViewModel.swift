//
//  AppetizerListViewModel.swift
//  Appetizers
//
//  Created by Danil Edkin on 02.06.2024.
//

import Foundation

final class AppetizerListViewModel: ObservableObject {
    @Published var appetizers: [Appetizer] = []
    @Published var alertItem: AlertItem?
    @Published var isLoading = false

    func getAppetizers(){
        isLoading = true
        NetworkManager.shared.getAppetizers{ [self] result in DispatchQueue.main.async {
            isLoading = false
            switch result{
                case .failure(let error):
                    switch error {
                    case .invalidResponse:
                        alertItem = AlertContext.invalidResponse
                    case .invalidData:
                        alertItem = AlertContext.invalidData
                    case .invalidUrl:
                        alertItem = AlertContext.invalidUrl
                    case .unableToComplete:
                        alertItem = AlertContext.unableToComplete
                    }
                    print(error.localizedDescription)
                case .success(let appetizers):
                    self.appetizers = appetizers
                }
            }
        }
    }
}
