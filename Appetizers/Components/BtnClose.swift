//
//  BtnClose.swift
//  Appetizers
//
//  Created by Danil Edkin on 23.06.2024.
//

import SwiftUI

struct BtnClose: View {
    var body: some View {
        ZStack{
            Circle()
                .frame(width: 30, height: 30)
                .foregroundColor(.white)
                .opacity(0.6)
                .padding()
            
            Image(systemName: "xmark")
                .frame(width:44, height: 44)
                .imageScale(.small)
                .foregroundColor(.black)
            
        }
    }
}

struct BtnClose_Previews: PreviewProvider {
    static var previews: some View {
        BtnClose()
    }
}
