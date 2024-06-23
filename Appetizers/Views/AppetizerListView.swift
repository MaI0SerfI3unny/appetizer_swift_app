//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Danil Edkin on 02.06.2024.
//

import SwiftUI
import Foundation

struct AppetizerListView: View {
    @StateObject var viewModel = AppetizerListViewModel()
    @State private var isShowDetail = false
    @State private var selectedAppetizer: Appetizer?
    
    var body: some View {
        ZStack{
            NavigationView{
                List(viewModel.appetizers){ appetizer in
                    AppetizersListCell(appetizer: appetizer)
                        .onTapGesture {
                            selectedAppetizer = appetizer
                            isShowDetail = true
                        }
                }.navigationTitle("🍿 Appertizers")
                    .disabled(isShowDetail)
            }
            .onAppear{
                viewModel.getAppetizers()
            }.blur(radius: isShowDetail ? 20 : 0)
            
            if isShowDetail{
                AppetizerListViewDetail(appetizer: selectedAppetizer!, isShowDetail: $isShowDetail)
            }
            
            if viewModel.isLoading{
                LoadingView()
            }
            
        }.alert(item: $viewModel.alertItem) { AlertItem in
                Alert(title: AlertItem.title, message: AlertItem.message, dismissButton: AlertItem.dismissButton)
        }
    }
}

struct AppetizerListView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerListView()
    }
}
