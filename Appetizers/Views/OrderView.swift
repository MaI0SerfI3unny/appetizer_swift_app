//
//  OrderView.swift
//  Appetizers
//
//  Created by Danil Edkin on 02.06.2024.
//

import SwiftUI

struct OrderView: View {
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationView{
            ZStack{
                VStack{
                    List{
                        ForEach(order.items){ appetizer in
                            AppetizersListCell(appetizer: appetizer)
                        }.onDelete(perform: order.deleteItems)
                    }.listStyle(PlainListStyle())
                    
                    Button{
                        print("order Add")
                    } label: {
                        ApettizerBtnAddOrder(Title: order.totalPrice)
                    }
                }
                
                if order.items.isEmpty{
                    EmptyOrder(imageName: "empty-order", message: "You have no items in orders")
                }
                
            }.navigationTitle("Orders")
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
