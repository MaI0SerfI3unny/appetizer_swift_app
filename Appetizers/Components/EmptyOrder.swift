//
//  EmptyOrder.swift
//  Appetizers
//
//  Created by Danil Edkin on 23.06.2024.
//

import SwiftUI

struct EmptyOrder: View {
    let imageName: String
    let message: String
    
    var body: some View {
        ZStack{
            Color(.systemBackground)
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                
                Text(message)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(.secondary)
                    .padding()
            }.offset(y: -50)
            
        }
    }
}

struct EmptyOrder_Previews: PreviewProvider {
    static var previews: some View {
        EmptyOrder(imageName: "empty-order", message: "Order is empty")
    }
}
