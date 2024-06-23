//
//  AppetizersListCell.swift
//  Appetizers
//
//  Created by Danil Edkin on 02.06.2024.
//

import SwiftUI

struct AppetizersListCell: View {
    let appetizer: Appetizer
    var body: some View {
            HStack{
                AppeetizerRemoteImage(urlString: appetizer.imageURL)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 120, height: 90)
                    .cornerRadius(8)
                VStack(alignment: .leading, spacing: 5){
                    Text(appetizer.name)
                        .font(.title2)
                        .fontWeight(.medium)
                    Text("$\(appetizer.price, specifier: "%.2f")")
                        .fontWeight(.semibold)
                    Spacer()
                }
                .padding(.leading, 5)
                .padding(.top, 5)
            }
    }
}

struct AppetizersListCell_Previews: PreviewProvider {
    static var previews: some View {
        AppetizersListCell(appetizer: MockData.sampleAppetizer)
    }
}
