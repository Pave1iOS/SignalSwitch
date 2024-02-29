//
//  ButtonView.swift
//  SignalSwitch
//
//  Created by Pavel Gribachev on 29.02.2024.
//

import SwiftUI

struct ButtonView: View {
    let btnText: String
    
    var body: some View {
        ZStack {
            Rectangle()
                .overlay(
                    RoundedRectangle(cornerRadius: 15.0)
                            .stroke(lineWidth: 5)
                            .fill(.white)
                )
                .clipShape(RoundedRectangle(cornerRadius: 15.0))
                .frame(width: 150, height: 50)
                .foregroundStyle(.blue)
            
                Text(btnText)
                .bold()
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    ButtonView(btnText: "NEXT")
}
