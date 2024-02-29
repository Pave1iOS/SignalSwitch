//
//  ButtonView.swift
//  SignalSwitch
//
//  Created by Pavel Gribachev on 29.02.2024.
//

import SwiftUI

struct ButtonView: View {
    let text: String
    
    var body: some View {
        ZStack {
            Rectangle()
                .clipShape(RoundedRectangle(cornerRadius: 15.0))
                .overlay(
                    RoundedRectangle(cornerRadius: 15.0)
                            .stroke(lineWidth: 5)
                            .fill(.white)
                )
                .frame(width: 150, height: 50)
                .foregroundStyle(.blue)
                .shadow(color: .gray, radius: 5)
            
                Text(text)
                .font(.largeTitle)
                .bold()
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    ButtonView(text: "NEXT")
}
