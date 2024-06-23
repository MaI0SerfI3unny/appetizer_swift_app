//
//  ApettizerBtnAddOrder.swift
//  Appetizers
//
//  Created by Danil Edkin on 23.06.2024.
//

import SwiftUI

struct ApettizerBtnAddOrder: View {
    let Title: Double
    
    var body: some View {
        Text("$\(Title, specifier: "%.2f") - Add to Order")
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 260, height: 50)
            .foregroundColor(.white)
            .background(.black)
            .cornerRadius(5)
    }
}

struct ApettizerBtnAddOrder_Previews: PreviewProvider {
    static var previews: some View {
        ApettizerBtnAddOrder(Title: 0.0)
    }
}
