//
//  NutrionInfo.swift
//  Appetizers
//
//  Created by Danil Edkin on 23.06.2024.
//

import SwiftUI

struct NutrionInfo: View {
    var title: String
    var value: String
    var body: some View {
        VStack(spacing: 5){
            Text(title)
                .font(.caption)
                .bold()
            
            Text("\(value)")
                .foregroundColor(.secondary)
                .fontWeight(.semibold)
                .italic()
        }    }
}

struct NutrionInfo_Previews: PreviewProvider {
    static var previews: some View {
        NutrionInfo(title: "", value: "")
    }
}
