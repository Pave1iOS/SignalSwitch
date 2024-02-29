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
                .overlay(
                    RoundedRectangle(cornerRadius: 15.0)
                            .stroke(lineWidth: 7)
                            .fill(.white)
                )
                .clipShape(RoundedRectangle(cornerRadius: 15.0))
                .frame(width: 150, height: 50)
                .foregroundStyle(.blue)
            
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