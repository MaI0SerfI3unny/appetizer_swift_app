//
//  AccountView.swift
//  Appetizers
//
//  Created by Danil Edkin on 02.06.2024.
//

import SwiftUI

struct AccountView: View {
    @StateObject var viewModel = AccountViewModel()
    
    var body: some View {
        NavigationView{
            Form{
                Section(header: Text("Personal info")){
                    TextField("First Name", text: $viewModel.user.firstName)
                    TextField("Last Name", text: $viewModel.user.lastName)
                    TextField("Email", text: $viewModel.user.email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    DatePicker("Birthday", selection: $viewModel.user.birthDate, displayedComponents: .date)
                    
                    Button{
                        viewModel.saveChanges()
                    } label: {
                        Text("Save changes")
                    }
                }
                
                Section(header: Text("Requests")){
                    Toggle(
                        "Extra Napkins",
                        isOn: $viewModel.user.extraNapkins)
                    Toggle(
                        "Frequent Refills",
                        isOn: $viewModel.user.frequentRefills)
                }
                .toggleStyle(SwitchToggleStyle(tint: .brandPrimary))
               
            }.navigationTitle("Account")
        }
        .onAppear{
            viewModel.retrieveUser()
        }
        .alert(item: $viewModel.alertItem){
            alertItem in
            Alert(
                title: alertItem.title,
                message: alertItem.message,
                dismissButton: alertItem.dismissButton)
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
