//
//  AppetizerListViewDetail.swift
//  Appetizers
//
//  Created by Danil Edkin on 23.06.2024.
//

import SwiftUI

struct AppetizerListViewDetail: View {
    @EnvironmentObject var order: Order
    
    let appetizer: Appetizer
    @Binding var isShowDetail: Bool
    var body: some View {
        VStack{
            AppeetizerRemoteImage(urlString: appetizer.imageURL)
                .aspectRatio(contentMode: .fit)
                .frame(width: 320, height: 225)
                .padding(.top, 10)
            VStack{
                Text(appetizer.name)
                    .font(.title)
                    .fontWeight(.semibold)
                
                Text(appetizer.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()
                    .fontWeight(.semibold)
                
                HStack(spacing: 40){
                    NutrionInfo(title: "Carbs", value: String(appetizer.carbs))
                 
                    NutrionInfo(title: "Protein", value: String(appetizer.protein))
                    
                    NutrionInfo(title: "Calories", value: String(appetizer.calories))
                }
            }
            
            Spacer()
            
            Button{
                order.add(appetizer)
                isShowDetail = false
            } label: {
                ApettizerBtnAddOrder(Title: appetizer.price)
            }.padding(.bottom, 30)
        }
        .frame(width: 320, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(Button {
            isShowDetail = false
        }label: {
            BtnClose()
        }, alignment: .topTrailing)
    }
}

struct AppetizerListViewDetail_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerListViewDetail(appetizer: MockData.sampleAppetizer, isShowDetail: .constant(true))
    }
}
